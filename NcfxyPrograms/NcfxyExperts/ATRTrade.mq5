//+------------------------------------------------------------------+
//|                                                  TestExperts.mq5 |
//|                             Copyright 2018, Ncfxy Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2018, Ncfxy Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"

input double lots = 0.1;
input double kATR = 3;
input int ATRperiod = 20;
input int holdbars = 8;
input int slippage = 10;
input bool revers = false;
input ulong EXPERT_MAGIC = 0;
int atr_handle;
//--- here we will store the last ATR values and the candle body
double last_atr, last_body;
datetime lastbar_timeopen;
double trade_lot;
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
   //--- initialize global variables
   last_atr = 0;
   last_body = 0;
   //--- set the correct volume
   double min_lot = SymbolInfoDouble(Symbol(), SYMBOL_VOLUME_MIN);
   trade_lot = lots> min_lot ? lots: min_lot;
   //--- create ATR indicator handle
   atr_handle = iATR(Symbol(), Period(), ATRperiod);
   if(atr_handle == INVALID_HANDLE){
      PrintFormat("%s: failed to create iATR, error code %d", __FUNCTION__, GetLastError());
      return(INIT_FAILED);
   }
//--- create timer
   EventSetTimer(60);
   
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//--- destroy timer
   EventKillTimer();
   //--- inform of the EA operation end code
   Print(__FILE__, ": Deinitialization reason code = ", reason);
   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---
//--- trading signal
   static int signal = 0; // +1 means a buy signal, -1 means a sell signal
//--- check and close old positions opened more than 'holdbars' bars ago
   ClosePositionsByBars(holdbars, slippage, EXPERT_MAGIC);
//--- check for a new bar
   if(isNewBar()){
      //--- check for a signal persence
      signal = CheckSignal();
   }
   //--- if a netting position is opened, skip the signal - wait till it closes
   if(signal != 0 && PositionsTotal() > 0 && (ENUM_ACCOUNT_MARGIN_MODE) 
   AccountInfoInteger(ACCOUNT_MARGIN_MODE) == ACCOUNT_MARGIN_MODE_RETAIL_NETTING){
      signal = 0;
      return; // exit the NewTick event handler and do not enter the market before a new bar appears
   }
   //--- for a hedging account, each position is held and closed separately
   if(signal != 0){
      //--- buy signal
      if(signal > 0){
         PrintFormat("%s: Buy signal! Revers=%s", __FUNCTION__, string(revers));
         if(Buy(trade_lot, slippage, EXPERT_MAGIC)){
            signal = 0;
         }
      }
      //--- sell signal
      if(signal < 0){
         PrintFormat("%s: Sell signal Revers=%s", __FUNCTION__, string(revers));
         if(Sell(trade_lot, slippage, EXPERT_MAGIC)){
            signal = 0;
         }
      }
   }
   
   
  }
//+------------------------------------------------------------------+
//| Check for a new trading signal                                   |
//+------------------------------------------------------------------+
int CheckSignal(){
//--- 0 means no signal
   int res = 0;
//--- get ATR value on a penultimate complete bar (the bar index is 2)
   double atr_value[1];
   if(CopyBuffer(atr_handle, 0, 2, 1, atr_value) != -1){
      last_atr = atr_value[0];
      //--- get data on the last closed bar to the MqlRates type array
      MqlRates bar[1];
      if(CopyRates(_Symbol, _Period, 1, 1, bar) != -1){
         //---calculate the bar body size on the last complete bar
         last_body = bar[0].close - bar[0].open;
         //--- if the body of the last bar (with index 1) exceeds the previous ATR
         //--- value (on the bar with index 2), a trading signal is received
         if(MathAbs(last_body) > kATR*last_atr){
            res = last_body > 0?1:-1; // positive value for the upward candle
         }
      }else {
         PrintFormat("%s: Failed to receive the last bar! Error", __FUNCTION__, GetLastError());
      }
   }else{
      PrintFormat("%s: Failed to received ATR indicator value! Error", __FUNCTION__, GetLastError());
   }
   //--- if reverse trading mode is enabled
   res = revers? -res: res; // reverse the signal if necessary (return -1 instead of 1 and vice versa)
   //--- return a trading signal value
   return (res);
}

//+------------------------------------------------------------------+
//| Return 'true' when a new bar appears                             |
//+------------------------------------------------------------------+
bool isNewBar(const bool print_log=true){
   static datetime bartime = 0; // store open time of the current bar
   //--- get open time of the zero bar
   datetime currbar_time = iTime(Symbol(), Period(), 0);
   //--- if open time changes, a new bar has arrived
   if(bartime != currbar_time){
      bartime = currbar_time;
      lastbar_timeopen = bartime;
      //--- display data on open time of a new bar in the log
      if(print_log && !(MQLInfoInteger(MQL_OPTIMIZATION) || MQLInfoInteger(MQL_TESTER))){
         //--- display a message with a new bar open time
         PrintFormat("%s: new bar on %s %s opened at %s", __FUNCTION__, Symbol(),
                     StringSubstr(EnumToString(Period()), 7),
                     TimeToString(TimeCurrent(), TIME_SECONDS));
         //--- get data on the last tick
         MqlTick last_tick;
         if(!SymbolInfoTick(Symbol(), last_tick)){
            Print("SymbolInfoTick() failed, error = ", GetLastError());
         }
         //--- display the last tick time up to milliseconds
         PrintFormat("Last tick wat at %s.%03d", TimeToString(last_tick.time, TIME_SECONDS), last_tick.time_msc %1000);
      }
      //--- we have a new bar
      return (true);
   }
   //--- no new bar
   return(false);
}

//+------------------------------------------------------------------+
//| Buy at a market price with a specified volume                    |
//+------------------------------------------------------------------+
bool Buy(double volume, ulong deviation=10, ulong magicnumber=0){
   //--- buy at a market price
   return (MarketOrder(ORDER_TYPE_BUY, volume, deviation, magicnumber));
}
//+------------------------------------------------------------------+
//| Sell at a market price with a specified volume                   |
//+------------------------------------------------------------------+
bool Sell(double volume, ulong deviation=10, ulong magicnumber=0){
   //--- sell at a market price
   return (MarketOrder(ORDER_TYPE_SELL, volume, deviation, magicnumber));
}
//+------------------------------------------------------------------+
//| Close Positions by hold time in bars                             |
//+------------------------------------------------------------------+
void ClosePositionsByBars(int holdtimebars, ulong deviation=10, ulong magicnumber=0){
   int total=PositionsTotal(); // number of open positions
   //--- iterate over open positions
   for(int i = total - 1;i >= 0;i--){
      //--- position parameters
      ulong position_ticket=PositionGetTicket(i);
      // position ticket;
      string position_symbol = PositionGetString(POSITION_SYMBOL); // symbol
      ulong magic = PositionGetInteger(POSITION_MAGIC); // position MagicNumber
      datetime position_open=(datetime) PositionGetInteger(POSITION_TIME); // position open time
      int bars = iBarShift(Symbol(), PERIOD_CURRENT, position_open) + 1;
      // how many bars ago a position was opened
      
      //--- if a position's lifetime is already large, while MagicNumber and a symbol match
      if(bars > holdtimebars && magic == magicnumber && position_symbol == Symbol()){
         int digits = (int) SymbolInfoInteger(position_symbol, SYMBOL_DIGITS); // number of decimal places
         double volume = PositionGetDouble(POSITION_VOLUME); // position volume
         ENUM_POSITION_TYPE type = (ENUM_POSITION_TYPE) PositionGetInteger(POSITION_TYPE); // position type
         string str_type = StringSubstr(EnumToString(type), 14);
         StringToLower(str_type); // lower the text case for correct message formatting
         PrintFormat("Close position #%d %s %s %.2f", position_ticket, position_symbol, str_type, volume);
         //--- set an order type and sending a trade request
         if(type == POSITION_TYPE_BUY){
            MarketOrder(ORDER_TYPE_SELL, volume, deviation, magicnumber, position_ticket);
         }else{
            MarketOrder(ORDER_TYPE_BUY, volume, deviation, magicnumber, position_ticket);
         }
      }
   }
}
//+------------------------------------------------------------------+
//| Prepare and send a trade request                                 |
//+------------------------------------------------------------------+
bool MarketOrder(ENUM_ORDER_TYPE type, double volume, ulong slip, ulong magicNumber, ulong pos_ticket=0){
   //--- declaring and initializing structures
   MqlTradeRequest request = {0};
   MqlTradeResult result = {0};
   double price = SymbolInfoDouble(Symbol(), SYMBOL_BID);
   if(type == ORDER_TYPE_BUY){
      price = SymbolInfoDouble(Symbol(), SYMBOL_ASK);
   }
   //--- request parameters
   request.action = TRADE_ACTION_DEAL; // trading operation
   request.position = pos_ticket;      // position ticket if closing
   request.symbol = Symbol();          // symbol
   request.volume = volume;            // volume
   request.type = type;                // order type
   request.price = price;              // trade price
   request.deviation = slip;           // allowable deviation from the price
   request.magic = magicNumber;        // order MagicNumber
   //--- send a request
   if(!OrderSend(request, result)){
      //--display data on failure
      PrintFormat("OrderSend %s %s %.2f at %.5f error %d", request.symbol, EnumToString(type), 
                  volume, request.price, GetLastError());
      return (false);
   }
   //--- inform of a successful operation
   PrintFormat("retcode=%u deal=%I64u order=%I64u", result.retcode, result.deal, result.order);
   return (true);
}

//+------------------------------------------------------------------+
//| Timer function                                                   |
//+------------------------------------------------------------------+
void OnTimer()
  {
//---
   
  }
//+------------------------------------------------------------------+
//| Trade function                                                   |
//+------------------------------------------------------------------+
void OnTrade()
  {
//---
   
  }
//+------------------------------------------------------------------+
//| TradeTransaction function                                        |
//+------------------------------------------------------------------+
void OnTradeTransaction(const MqlTradeTransaction& trans,
                        const MqlTradeRequest& request,
                        const MqlTradeResult& result)
  {
//---
   
  }
//+------------------------------------------------------------------+
//| ChartEvent function                                              |
//+------------------------------------------------------------------+
void OnChartEvent(const int id,
                  const long &lparam,
                  const double &dparam,
                  const string &sparam)
  {
//---
   
  }
//+------------------------------------------------------------------+
//| BookEvent function                                               |
//+------------------------------------------------------------------+
void OnBookEvent(const string &symbol)
  {
//---
   
  }
//+------------------------------------------------------------------+
