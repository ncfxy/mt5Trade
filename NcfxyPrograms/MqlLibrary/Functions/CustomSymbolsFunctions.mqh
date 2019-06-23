#include "../AllConstants.mqh"

// https://www.mql5.com/zh/docs/customsymbols

// 在指定组以指定名称创建一个自定义交易品种。
bool CustomSymbolCreate(
    const string symbol_name,         //自定义交易品种名称
    const string symbol_path = "",    // 将要创建交易品种的组的名称
    const string symbol_origin = NULL //交易品种的名称，该交易品种用作创建自定义交易品种的依据
);

// 删除指定名称的自定义交易品种。
bool CustomSymbolDelete(
    const string symbol_name // 自定义交易品种名称
);

// 为自定义交易品种设置整型属性值。
bool CustomSymbolSetInteger(
    const string symbol_name,             // 交易品种名称
    ENUM_SYMBOL_INFO_INTEGER property_id, // 属性 ID
    long property_value                   // 属性值
);

// 为自定义交易品种设置真实型属性值。
bool CustomSymbolSetDouble(
    const string symbol_name,            // 交易品种名称
    ENUM_SYMBOL_INFO_DOUBLE property_id, // 属性ID
    double property_value                // 属性值
);

// 为自定义交易品种设置字符串类型属性值。
bool CustomSymbolSetString(
    const string symbol_name,            // 交易品种名称
    ENUM_SYMBOL_INFO_STRING property_id, // 属性 ID
    string property_value                // 属性值
);

// 按照订单类型和方向，为自定义交易品种设置预付款比率。
bool CustomSymbolSetMarginRate(
    const string symbol_name,      // 交易品种名称
    ENUM_ORDER_TYPE order_type,    // 订单类型
    double initial_margin_rate,    // 初始预付款比率
    double maintenance_margin_rate // 维持预付款比率
);

// 为指定交易品种和工作日设置指定报价时段的起止时间。
bool CustomSymbolSetSessionQuote(
    const string symbol_name,     // 交易品种名称
    ENUM_DAY_OF_WEEK day_of_week, // 工作日
    uint session_index,           // 时段索引
    datetime from,                // 开始时段
    datetime to                   // 结束时段
);

// 为指定交易品种和工作日设置指定交易时段的起止时间
bool CustomSymbolSetSessionTrade(
    const string symbol_name,     // 交易品种名称
    ENUM_DAY_OF_WEEK day_of_week, // 工作日
    uint session_index,           // 时段索引
    datetime from,                // 开始时段
    datetime to                   // 结束时段
);

// 删除指定时间间隔内自定义交易品种价格历史的全部柱形图。
int CustomRatesDelete(
    const string symbol, // 交易品种名称
    datetime from,       // 开始日期
    datetime to          // 结束日期
);

// 以MqlRates类型数组数据完全替换指定时间间隔内自定义交易品种的价格历史。
int CustomRatesReplace(
    const string symbol,     // 交易品种名称
    datetime from,           // 开始日期
    datetime to,             // 结束日期
    const MqlRates *rates[], // 即将用于自定义交易品种的数据数组
    uint count = WHOLE_ARRAY // 即将使用的rates[]数组元素的数量
);

// 将丢失的柱形图添加到自定义交易品种历史并用MqlRates类型数组数据替换现有数据。
int CustomRatesUpdate(
    const string symbol,     //自定义交易品种名称
    const MqlRates *rates[], // 即将用于自定义交易品种的数据数组
    uint count = WHOLE_ARRAY // 即将使用的rates[]数组元素的数量
);

// 添加MqlTick类型的数组数据到自定义交易品种的价格历史。自定义交易品种一定要在市场报价窗口来选择。
int CustomTicksAdd(
    const string symbol,     // 交易品种名称
    const MqlTick *ticks[],  // 应该应用于自定义交易品种的报价数据数组
    uint count = WHOLE_ARRAY // 即将使用的ticks[]数组元素的数量
);

// 删除指定时间间隔内自定义交易品种价格历史的全部报价。
int CustomTicksDelete(
    const string symbol, // 交易品种名称
    long from_msc,       // 开始日期
    long to_msc          // 结束日期
);

// 以MqlTick类型数组数据完全替换指定时间间隔内自定义交易品种的价格历史。
int CustomTicksReplace(
    const string symbol,     // 交易品种名称
    long from_msc,           // 开始日期
    long to_msc,             // 结束日期
    const MqlTick *ticks[],  // 即将用于自定义交易品种的数据数组
    uint count = WHOLE_ARRAY // 即将使用的ticks[]数组元素的数量
);

// 为自定义交易品种传递市场深度的状态。该函数可以推广市场深度，类似于价格从交易商服务器到达。
int CustomBookAdd(
    const string symbol,        // 交易品种名称
    const MqlBookInfo *books[], // 带有对市场深度元素描述的数组
    uint count = WHOLE_ARRAY    // 将要使用的元素数量
);
