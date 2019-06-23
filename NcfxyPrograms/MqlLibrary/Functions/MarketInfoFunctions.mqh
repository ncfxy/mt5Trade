#include "../AllConstants.mqh"

// https://www.mql5.com/zh/docs/marketinformation

// 返回可用交易品种数量（在市场调查中选择）。
int SymbolsTotal(
    bool selected // True - 只是市场报价中的交易品种
);

// 检查指定名称的交易品种是否存在。
bool SymbolExist(
    const string name, // 交易品种名称
    bool &is_custom    // 自定义交易品种属性
);

// 返回交易品种名称。
string SymbolName(
    int pos,      // 列表中的数字
    bool selected // true - 只是市场报价中的交易品种
);

// 在市场观测中选择一个交易品种，或者从窗口中移动一个交易品种。
bool SymbolSelect(
    string name, // 交易品种名称
    bool select  // 添加或者移除
);

// 该函数检验在客户端中选出来的交易品种数据与交易服务器中的数据是同步的。
bool SymbolIsSynchronized(
    string name // 交易品种名称
);

// 返回一个规定交易样品的类似特性，函数有两个变量。
// 1. 快速返回规定值。
double SymbolInfoDouble(
    string name,                    // 交易品种
    ENUM_SYMBOL_INFO_DOUBLE prop_id // 属性标识符
);

// 2. 返回真值或失败值取决于函数操作是否成功，如果成功，属性值通过引用从最后的参量传递到接受变量中。
bool SymbolInfoDouble(
    string name,                     // 交易品种
    ENUM_SYMBOL_INFO_DOUBLE prop_id, // 属性标识符
    double &double_var               // 这里假设属性值
);

// 返回一个规定交易样品的类似特质，该函数有两种变体
// 1. 快速返回属性值
long SymbolInfoInteger(
    string name,                     // 交易品种
    ENUM_SYMBOL_INFO_INTEGER prop_id // 属性标识符

);

// 2. 返回真值或失败值取决于函数是否成功执行，如果成功，属性值通过引用从最后的参量传递到接受变量中
bool SymbolInfoInteger(
    string name,                      // 交易品种
    ENUM_SYMBOL_INFO_INTEGER prop_id, // 属性标识符
    long &long_var                    // 这里假设属性值
);

// 一个规定交易品种返回相对应的特性，该函数中有两个变体。
// 1. 立即返回属性值
string SymbolInfoString(
    string name,                    // 交易品种
    ENUM_SYMBOL_INFO_STRING prop_id // 属性标识符
);

// 2. 返回true或者false，由该函数运行成功与否来决定，如果成功，在培育变量通过引用传递到最后常量中函数属性固定。
bool SymbolInfoString(
    string name,                     // 交易品种
    ENUM_SYMBOL_INFO_STRING prop_id, // 属性标识符
    string &string_var               // 这里假设属性值
);

// 根据订单类型和方向返回预付款比率。
bool SymbolInfoMarginRate(
    string name,                    // 交易品种名称
    ENUM_ORDER_TYPE order_type,     // 订单类型
    double &initial_margin_rate,    // 初始预付款比率
    double &maintenance_margin_rate // 维持预付款比率
);

// 该函数返回在MqlTick 类型常量中的规定交易品种的当前价值。
bool SymbolInfoTick(
    string symbol, // 交易品种名称
    MqlTick &tick  // 结构参考
);

// 允许为规定交易样品和周期接收引用登陆的开始和结束时间。
bool SymbolInfoSessionQuote(
    string name,                  // 交易品种名称
    ENUM_DAY_OF_WEEK day_of_week, // 一周中的每天
    uint session_index,           // 期指
    datetime &from,               // 期始时间
    datetime &to                  // 期末时间
);

// 平日指定交易品种允许接收规定交易的起始和结束时间
bool SymbolInfoSessionTrade(
    string name,                  // 交易品种名称
    ENUM_DAY_OF_WEEK day_of_week, // 一周中的每天
    uint session_index,           // 期指
    datetime &from,               // 期始时间
    datetime &to                  // 期末时间
);

// 提供所选的交易品种的开盘市场深度信息，预定接收DOM转变的通知。
bool MarketBookAdd(
    string symbol // 交易品种
);

// 提供所选交易品种的收盘市场报价信息，并取消预定接收DOM转变的通知。
bool MarketBookRelease(
    string symbol // 交易品种
);

// 返回结构数组 MqlBookInfo 包括指定交易品种的市场报价记录。
bool MarketBookGet(
    string symbol,      // 交易品种
    MqlBookInfo *book[] // 参考数组
);
