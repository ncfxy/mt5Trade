#include "../AllConstants.mqh"

// https://www.mql5.com/zh/docs/event_handlers

// 当Start事件发生时调用这个函数。这个函数旨在一次性执行脚本中实施的操作。有两种函数类型。
int OnStart(void);

// 当Init事件发生时在指标和EA中调用这个函数。它被用于初始化运行中的MQL5程序。有两种函数类型。
int OnInit(void);

// 当Deinit事件发生时在指标和EA中调用这个函数。它被用于去初始化运行中的MQL5程序。
void OnDeinit(
    const int reason //去初始化原因代码
);

// 当NewTick事件发生时在EA中调用这个函数，来处理一个新报价。
void OnTick(void);

// 当Calculate事件发生时在指标中调用这个函数，来处理价格数据的变化。有两种函数类型。一个指标内只可以使用其中一种。
// 基于数据数组的计算
int OnCalculate(
    const int rates_total,     // price[]数组大小
    const int prev_calculated, // 在前一个调用中处理过的柱形图数量
    const int begin,           //price[]数组中，有意义数据开始的索引编号
    const double *price[]      // 计算值数组
);

// 当Calculate事件发生时在指标中调用这个函数，来处理价格数据的变化。有两种函数类型。一个指标内只可以使用其中一种。
// 基于当前时间周期时间序列的计算
int OnCalculate(
    const int rates_total,     // 输入时间序列的大小
    const int prev_calculated, // 在前一个调用中处理过的柱形图数量
    const datetime *time[],    // 时间数组
    const double *open[],      // 开盘价数组
    const double *high[],      // 最高价数组
    const double *low[],       // 最低价数组
    const double *close[],     // 收盘价数组
    const long *tick_volume[], // 报价量数组
    const long *volume[],      // 真实交易量数组
    const int *spread[]        // 点差数组
);

// 当Timer事件在固定时间间隔内由程序端生成期间，在EA中调用这个函数。
void  OnTimer(void);

// 当Trade事件发生时在EA中调用这个函数。这个函数旨在处理订单、持仓和交易列表的变化。
void  OnTrade(void);

// 当TradeTransaction事件发生时在EA中调用这个函数。这个函数旨在处理交易请求执行结果。
void  OnTradeTransaction(
   const MqlTradeTransaction&    trans,     // 交易事务结构 
   const MqlTradeRequest&        request,   // 请求结构 
   const MqlTradeResult&         result     // 回应结构 
   );

// 当BookEvent事件发生时在指标和EA中调用这个函数。它是用来处理市场深度的变化。
void  OnBookEvent( 
   const string&  symbol         //交易品种 
   );

// 当ChartEvent事件发生时在指标和EA中调用这个函数。这个函数意在处理由用户或者MQL5程序所做的图表更改。
void  OnChartEvent( 
   const int       id,       // 事件ID  
   const long&     lparam,   // 长整型(long)事件参数 
   const double&   dparam,   // 长整型(double)事件参数 
   const string&   sparam    // 字符串型(string)事件参数 
   );

// 当Tester事件发生时在EA中调用这个函数，测试之后执行必要的操作。
double  OnTester(void);

// 当TesterInit事件发生时在EA中调用这个函数，以便在策略测试优化之前执行必要的操作。有两种函数类型。
int  OnTesterInit(void);

// 在EA优化之后，当TesterDeinit事件发生时在EA中调用这个函数。
void  OnTesterDeinit(void);

// 当 TesterPass事件发生时，在EA中调用这个函数来处理EA优化期间的新数据框架。
void  OnTesterPass(void);
