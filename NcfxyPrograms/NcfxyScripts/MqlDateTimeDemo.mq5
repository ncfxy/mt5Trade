//+------------------------------------------------------------------+
//|                                              MqlDateTimeDemo.mq5 |
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
   datetime date1 = D'2008.03.01';
   datetime date2 = D'2009.03.01';
   
   MqlDateTime str1, str2;
   TimeToStruct(date1, str1);
   TimeToStruct(date2, str2);
   printf("%02d.%02d.%4d, day of year = %d", str1.day, str1.mon,
            str1.year, str1.day_of_year);
   printf("%02d.%02d.%4d, day of year = %d", str2.day, str2.mon,
            str2.year, str2.day_of_year);
   
  }
//+------------------------------------------------------------------+
