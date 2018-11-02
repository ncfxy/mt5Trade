//+------------------------------------------------------------------+
//|                                         InteractionFunctions.mq5 |
//|                        Copyright 2018, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2018, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
   tryMessageBox();
  }
//+------------------------------------------------------------------+
//| Try to Send Mail                                                 |
//+------------------------------------------------------------------+
void trySendMail()
{
   SendMail("Send By Script", "This is a mail send by mt5 script");
}
//+------------------------------------------------------------------+
//| Try to use messagebox                                                 |
//+------------------------------------------------------------------+
void tryMessageBox()
{
   MessageBox("abc", "123", MB_ICONINFORMATION);
}
//+------------------------------------------------------------------+

