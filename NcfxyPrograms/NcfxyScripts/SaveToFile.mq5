//+------------------------------------------------------------------+
//|                                                   SaveToFile.mq5 |
//|                             Copyright 2018, Ncfxy Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2018, Ncfxy Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
      MqlRates rates[];
      int total = CopyRates(Symbol(), Period(), 0, 20000, rates);
      Print("---- how DBL_MAX looks like -----"); 
      Print("Total = ", total);
  }
//+------------------------------------------------------------------+
