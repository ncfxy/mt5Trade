//+------------------------------------------------------------------+
//|                                                      FindMax.mq5 |
//|                             Copyright 2018, Ncfxy Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2018, Ncfxy Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
//--- 输入参数
input double x=-3.0; // start=-3, step=0.05, stop=3
input double y=-3.0; // start=-3, step=0.05, stop=3
input double z=-3.0; // start=-3, step=0.05, stop=3

//+------------------------------------------------------------------+

double OnTester()
{
   double ret = (x + y) / z;
   return(ret);
}