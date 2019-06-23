#include "../AllConstants.mqh"
#include "CommonFunctions.mqh"

// https://www.mql5.com/zh/docs/series

// 关于历史数据的返回信息，有2个变量可供调用。
// 直接返回属性值。
long SeriesInfoInteger(
    string symbol_name,              // 交易品种名称
    ENUM_TIMEFRAMES timeframe,       // 周期
    ENUM_SERIES_INFO_INTEGER prop_id // 属性标识符
);

// 依靠函数的成果运行返回真值或错误值。
bool SeriesInfoInteger(
    string symbol_name,               // 交易品种名称
    ENUM_TIMEFRAMES timeframe,        // 周期
    ENUM_SERIES_INFO_INTEGER prop_id, // 属性ID
    long &long_var                    // 用于获得信息的变量
);

// 为指定交易品种和周期返回历史计算中的字节数量。有两种变量函数可以调用。
// 要求所有历史字节
int Bars(
    string symbol_name,       // 交易品种名称
    ENUM_TIMEFRAMES timeframe // 周期
);

// 为所选时间间隔要求历史字节
int Bars(
    string symbol_name,        // 交易品种名称
    ENUM_TIMEFRAMES timeframe, // 周期
    datetime start_time,       // 启动日期和时间
    datetime stop_time         // 结束日期和时间
);

// 返回指定指标计算数组的数量。
int BarsCalculated(
    int indicator_handle // 指标处理
);

// 函数返回以 MqlParam 类型参量数组为基础建立的特定技术计时器处理。
int IndicatorCreate(
    string symbol,                            // 交易品种名称
    ENUM_TIMEFRAMES period,                   // 时间表
    ENUM_INDICATOR indicator_type,            // ENUM_INDICATOR列举中的指标类型
    int parameters_cnt = 0,                   // 参量号
    const MqlParam *parameters_array[] = NULL // 参量数组
);

// 基于指定句柄，返回指标输入参数的数量，以及参数的值和类型。
int IndicatorParameters(
    int indicator_handle,           // 指标处理
    ENUM_INDICATOR &indicator_type, // 接收指标类型的变量
    MqlParam *parameters[]          // 接收参数的数组
);

// 如果不使用，函数删除指标缓冲区并释放指标计算空间。
bool IndicatorRelease(
    int indicator_handle // 指标处理
);

// 在需要数量中，获得确定指标指定缓冲区的数据。
// 第一位置调用和所需元素数量
int CopyBuffer(
    int indicator_handle, // 指标处理
    int buffer_num,       // 指标缓冲区数
    int start_pos,        // 启动位置
    int count,            // 复制总额
    double buffer[]       // 复制的目标数组
);

// 在需要数量中，获得确定指标指定缓冲区的数据。
// 开始日期调用和所需元素的数量
int CopyBuffer(
    int indicator_handle, // 指标处理
    int buffer_num,       // 指标缓冲区数
    datetime start_time,  // 启动日期和时间
    int count,            // 复制总额
    double buffer[]       // 复制的目标数组
);

// 在需要数量中，获得确定指标指定缓冲区的数据。
// 开始调用和要求时间间隔的最后日期
int CopyBuffer(
    int indicator_handle, // 指标处理
    int buffer_num,       // 指标缓冲区数
    datetime start_time,  // 启动日期和时间
    datetime stop_time,   // 结束日期和时间
    double buffer[]       // 复制的目标数组
);

// 获得指定交易品种周期的特定MqlRates结构到rates_array数组中。元素复制数据的命令是从现在到过去，例如，从当前位置0开始表示当前字节。
// 调用第一位置和要求元素的数量
int CopyRates(
    string symbol_name,        // 交易品种名称
    ENUM_TIMEFRAMES timeframe, // 周期
    int start_pos,             // 启动位置
    int count,                 // 复制数据计算
    MqlRates rates_array[]     // 复制目标数组
);

// 获得指定交易品种周期的特定MqlRates结构到rates_array数组中。元素复制数据的命令是从现在到过去，例如，从当前位置0开始表示当前字节。
// 调用起始位置日期和要求元素数量
int CopyRates(
    string symbol_name,        // 交易品种名称
    ENUM_TIMEFRAMES timeframe, // 周期
    datetime start_time,       // 开始日期和时间
    int count,                 // 复制数据计算
    MqlRates rates_array[]     // 复制目标数组
);

// 获得指定交易品种周期的特定MqlRates结构到rates_array数组中。元素复制数据的命令是从现在到过去，例如，从当前位置0开始表示当前字节。
// 调用起始位置和要求时间间隔的日期末尾
int CopyRates(
    string symbol_name,        // 交易品种名称
    ENUM_TIMEFRAMES timeframe, // 周期
    datetime start_time,       // 开始日期和时间
    datetime stop_time,        // 结束日期和时间
    MqlRates rates_array[]     // 复制目标数组
);

// 函数在特定量中获得指定交易品种周期的特定开盘时间数据到time_array数据中。元素注释的命令是从现在到过去，例如，从当前位置0开始表示当前字节。
// 调用第一位置和要求元素的数量
int CopyTime(
    string symbol_name,        // 交易品种名称
    ENUM_TIMEFRAMES timeframe, // 周期
    int start_pos,             // 启动位置
    int count,                 // 复制的数据计算
    datetime time_array[]      // 复制开仓时间的目标数组
);

// 函数在特定量中获得指定交易品种周期的特定开盘时间数据到time_array数据中。元素注释的命令是从现在到过去，例如，从当前位置0开始表示当前字节。
// 调用起始位置日期和要求元素数量
int CopyTime(
    string symbol_name,        // 交易品种名称
    ENUM_TIMEFRAMES timeframe, // 周期
    datetime start_time,       // 启动日期和时间
    int count,                 // 复制的数据计算
    datetime time_array[]      // 复制开仓时间的目标数组
);

// 函数在特定量中获得指定交易品种周期的特定开盘时间数据到time_array数据中。元素注释的命令是从现在到过去，例如，从当前位置0开始表示当前字节。
// 调用起始位置和要求时间间隔的日期末尾
int CopyTime(
    string symbol_name,        // 交易品种名称
    ENUM_TIMEFRAMES timeframe, // 周期
    datetime start_time,       // 启动日期和时间
    datetime stop_time,        // 结束日期和时间
    datetime time_array[]      // 复制开仓时间的目标数组
);

// 函数在特定量中获得指定交易品种周期的特定开盘价格数据到open_array数据中。元素注释的命令是从现在到过去，例如，从当前位置0开始表示当前字节。
// 调用第一位置和要求元素的数量
int CopyOpen(
    string symbol_name,        // 交易品种名称
    ENUM_TIMEFRAMES timeframe, // 周期
    int start_pos,             // 启动位置
    int count,                 // 复制的数据计算
    double open_array[]        // 复制开仓时间的目标数组
);

// 调用起始位置日期和要求元素数量
int CopyOpen(
    string symbol_name,        // 交易品种名称
    ENUM_TIMEFRAMES timeframe, // 周期
    datetime start_time,       // 启动日期和时间
    int count,                 // 复制的数据计算
    double open_array[]        // 用于开盘柱的目标数组
);

// 调用起始位置和要求时间间隔的日期末尾
int CopyOpen(
    string symbol_name,        // 交易品种名称
    ENUM_TIMEFRAMES timeframe, // 周期
    datetime start_time,       // 启动日期和时间
    datetime stop_time,        // 结束日期和时间
    double open_array[]        // 用于开盘柱的目标数组
);

// 函数在特定量中获得指定交易品种周期的特定最高字节价格数据到high_array数据中。元素注释的命令是从现在到过去，例如，从当前位置0开始表示当前字节。
// 调用第一位置和要求元素的数量
int CopyHigh(
    string symbol_name,        // 交易品种名称
    ENUM_TIMEFRAMES timeframe, // 周期
    int start_pos,             // 启动位置
    int count,                 // 复制的数据计算
    double high_array[]        // 复制的目标数组
);

// 调用起始位置日期和要求元素数量
int CopyHigh(
    string symbol_name,        // 交易品种名称
    ENUM_TIMEFRAMES timeframe, // 周期
    datetime start_time,       // 启动日期和时间
    int count,                 // 复制的数据计算
    double high_array[]        // 复制的目标数组
);

// 调用起始位置和要求时间间隔的日期末尾
int CopyHigh(
    string symbol_name,        // 交易品种名称
    ENUM_TIMEFRAMES timeframe, // 周期
    datetime start_time,       // 启动日期和时间
    datetime stop_time,        // 结束日期和时间
    double high_array[]        // 复制的目标数组
);

// 函数在特定量中获得指定交易品种周期的特定最低字节价格数据到low_array数据中。元素注释的命令是从现在到过去，例如，从当前位置0开始表示当前字节。
// 调用第一位置和要求元素的数量
int CopyLow(
    string symbol_name,        // 交易品种名称
    ENUM_TIMEFRAMES timeframe, // 周期
    int start_pos,             // 启动位置
    int count,                 // 复制的数据计算
    double low_array[]         // 复制的目标数组
);

// 调用起始位置日期和要求元素数量
int CopyLow(
    string symbol_name,        // 交易品种名称
    ENUM_TIMEFRAMES timeframe, // 周期
    datetime start_time,       // 启动日期和时间
    int count,                 // 复制的数据计算
    double low_array[]         // 复制的目标数组
);

// 调用起始位置和要求时间间隔的日期末尾
int CopyLow(
    string symbol_name,        // 交易品种名称
    ENUM_TIMEFRAMES timeframe, // 周期
    datetime start_time,       // 启动日期和时间
    datetime stop_time,        // 结束日期和时间
    double low_array[]         // 复制的目标数组
);

// 函数在特定量中获得指定交易品种周期的特定收盘价格数据到close_array数据中。元素注释的命令是从现在到过去，例如，从当前位置0开始表示当前字节。
// 调用第一位置和要求元素的数量
int CopyClose(
    string symbol_name,        // 交易品种名称
    ENUM_TIMEFRAMES timeframe, // 周期
    int start_pos,             // 启动位置
    int count,                 // 复制的数据计算
    double close_array[]       // 复制的目标数组
);

// 调用起始位置日期和要求元素数量
int CopyClose(
    string symbol_name,        // 交易品种名称
    ENUM_TIMEFRAMES timeframe, // 周期
    datetime start_time,       // 启动日期和时间
    int count,                 // 复制的数据计算
    double close_array[]       // 复制的目标数组
);

// 调用起始位置和要求时间间隔的日期末尾
int CopyClose(
    string symbol_name,        // 交易品种名称
    ENUM_TIMEFRAMES timeframe, // 周期
    datetime start_time,       // 启动日期和时间
    datetime stop_time,        // 结束日期和时间
    double close_array[]       // 复制的目标数组
);

// 函数在特定量中获得指定交易品种周期的特定点击成交量数据到volume_array数据中。元素注释的命令是从现在到过去，例如，从当前位置0开始表示当前字节。
// 调用第一位置和要求元素的数量
int CopyTickVolume(
    string symbol_name,        // 交易品种名称
    ENUM_TIMEFRAMES timeframe, // 周期
    int start_pos,             // 启动位置
    int count,                 // 复制的数据计算
    long volume_array[]        // 订单号交易量的目标数组
);

// 调用起始位置日期和要求元素数量
int CopyTickVolume(
    string symbol_name,        // 交易品种名称
    ENUM_TIMEFRAMES timeframe, // 周期
    datetime start_time,       // 启动日期和时间
    int count,                 // 复制的数据计算
    long volume_array[]        // 订单号交易量的目标数组
);

// 调用起始位置和要求时间间隔的日期末尾
int CopyTickVolume(
    string symbol_name,        // 交易品种名称
    ENUM_TIMEFRAMES timeframe, // 周期
    datetime start_time,       // 开始日期和时间
    datetime stop_time,        // 结束日期和时间
    long volume_array[]        // 订单号交易量的目标数组
);

// 函数在特定量中获得指定交易品种周期的特定交易成交量数据到volume_array数据中。元素注释的命令是从现在到过去，例如，从当前位置0开始表示当前字节。
// 调用第一位置和要求元素的数量
int CopyRealVolume(
    string symbol_name,        // 交易品种名称
    ENUM_TIMEFRAMES timeframe, // 周期
    int start_pos,             // 启动位置
    int count,                 // 复制的数据计算
    long volume_array[]        // 交易量值的目标数组
);

// 调用起始位置日期和要求元素数量
int CopyRealVolume(
    string symbol_name,        // 交易品种名称
    ENUM_TIMEFRAMES timeframe, // 周期
    datetime start_time,       // 启动日期和时间
    int count,                 // 复制的数据计算
    long volume_array[]        // 交易量值的目标数组
);

// 调用起始位置和要求时间间隔的日期末尾
int CopyRealVolume(
    string symbol_name,        // 交易品种名称
    ENUM_TIMEFRAMES timeframe, // 周期
    datetime start_time,       // 启动日期和时间
    datetime stop_time,        // 结束日期和时间
    long volume_array[]        // 交易量值的目标数组
);

// 函数在特定量中获得指定交易品种周期的特定点差价值数据到spread_array数据中。元素注释的命令是从现在到过去，例如，从当前位置0开始表示当前字节。
// 调用第一位置和要求元素的数量
int CopySpread(
    string symbol_name,        // 交易品种名称
    ENUM_TIMEFRAMES timeframe, // 周期
    int start_pos,             // 启动位置
    int count,                 // 复制的数据计算
    int spread_array[]         // 点差值的目标数组
);

// 调用起始位置日期和要求元素数量
int CopySpread(
    string symbol_name,        // 交易品种名称
    ENUM_TIMEFRAMES timeframe, // 周期
    datetime start_time,       // 启动日期和时间
    int count,                 // 复制的数据计算
    int spread_array[]         // 点差值的目标数组
);

// 调用起始位置和要求时间间隔的日期末尾
int CopySpread(
    string symbol_name,        // 交易品种名称
    ENUM_TIMEFRAMES timeframe, // 周期
    datetime start_time,       // 启动日期和时间
    datetime stop_time,        // 结束日期和时间
    int spread_array[]         // 点差值的目标数组
);

const uint COPY_TICKS_ALL;
// 该函数以 MqlTick 格式接收报价到ticks_array。 在这种情况下，从过去到现在索引报价，例如0号报价是数组中最早的报价。对于报价分析，请检查flags 字段，它会显示报价中实际变化的内容。
int CopyTicks(
    string symbol_name,          // 交易品种名称
    MqlTick *ticks_array[],      // 报价接收数组
    uint flags = COPY_TICKS_ALL, // 决定接收报价类型的标记
    ulong from = 0,              // 您想请求报价的日期
    uint count = 0               // 您想接收报价的数量
);

// 该函数可以在指定日期范围内以MqlTick格式接收报价到ticks_array。从过去到现在索引报价意味着0号报价是数组中最早的报价。对于报价分析，请检查flags 字段，它会显示实际变化的内容。
int CopyTicksRange(
    const string symbol_name,    //交易品种名称
    MqlTick *ticks_array[],      // 报价接收数组
    uint flags = COPY_TICKS_ALL, // 定义接收报价类型的标记
    ulong from_msc = 0,          // 请求报价开始的日期
    ulong to_msc = 0             // 请求报价截至日期
);

// 返回可用于历史记录的相应交易品种和周期的柱形图的数量。
int iBars(
    const string symbol,      // 交易品种
    ENUM_TIMEFRAMES timeframe // 周期
);

// 根据时间搜索柱形图。这个函数返回与指定时间对应的柱形图指数。
int iBarShift(
    const string symbol,       // 交易品种
    ENUM_TIMEFRAMES timeframe, // 周期
    datetime time,             // 时间
    bool exact = false         // 模式
);

// 返回对应的图表上柱形图的收盘价（通过'shift'参数表示）。
double iClose(
    const string symbol,       // 交易品种
    ENUM_TIMEFRAMES timeframe, // 周期
    int shift                  // 转移
);

// 返回对应的图表上柱形图的最高价（通过'shift'参数表示）。
double iHigh(
    const string symbol,       // 交易品种
    ENUM_TIMEFRAMES timeframe, // 周期
    int shift                  // 转移
);

// 返回在对应图表上找到的最高值的指数（相对于当前柱形图的转移）。
int iHighest(
    const string symbol,       // 交易品种
    ENUM_TIMEFRAMES timeframe, // 周期
    ENUM_SERIESMODE type,      // 时间序列标识符
    int count = WHOLE_ARRAY,   // 元素数量
    int start = 0              // 指数
);

// 返回对应的图表上柱形图的最低价（通过'shift'参数表示）。
double iLow(
    const string symbol,       // 交易品种
    ENUM_TIMEFRAMES timeframe, // 周期
    int shift                  // 转移
);

// 返回在对应图表上找到的最小值的指数（相对于当前柱形图的转移）。
int iLowest(
    const string symbol,       // 交易品种
    ENUM_TIMEFRAMES timeframe, // 周期
    ENUM_SERIESMODE type,      // 时间序列标识符
    int count = WHOLE_ARRAY,   // 元素数量
    int start = 0              // 指数
);

// 返回对应的图表上柱形图的开盘价（通过'shift'参数表示）。
double iOpen(
    const string symbol,       // 交易品种
    ENUM_TIMEFRAMES timeframe, // 周期
    int shift                  // 转移
);

// 返回对应的图表上柱形图的开盘时间（通过'shift'参数表示）。
datetime  iTime( 
   const string        symbol,          // 交易品种 
   ENUM_TIMEFRAMES     timeframe,       // 周期 
   int                 shift            // 转移 
   );

// 返回对应的图表上柱形图的报价量（通过'shift'参数表示）。
long  iTickVolume( 
   const string        symbol,          // 交易品种 
   ENUM_TIMEFRAMES     timeframe,       // 周期 
   int                 shift            // 转移 
   );

// 返回对应的图表上柱形图的真实交易量（通过'shift'参数表示）。
long  iRealVolume( 
   const string        symbol,          // 交易品种 
   ENUM_TIMEFRAMES     timeframe,       // 周期 
   int                 shift            // 转移 
   );

// 返回对应的图表上柱形图的报价量（通过'shift'参数表示）。
long  iVolume( 
   const string        symbol,          // 交易品种 
   ENUM_TIMEFRAMES     timeframe,       // 周期 
   int                 shift            // 转移 
   );

// 返回对应的图表上柱形图的点差值（通过'shift'参数表示）。
long  iSpread( 
   const string        symbol,          // 交易品种 
   ENUM_TIMEFRAMES     timeframe,       // 周期 
   int                 shift            // 转移 
   );
