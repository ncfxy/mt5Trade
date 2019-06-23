#include "../AllConstants.mqh"

// https://www.mql5.com/zh/docs/customind

// 该函数在全局 水平使用一维动态 双精度 数组捆绑指定指标缓冲区。
bool SetIndexBuffer(
    int index,                      // 缓冲指数
    double buffer[],                // 数组
    ENUM_INDEXBUFFER_TYPE data_type // 要存储的东西
);

// 函数建立了类似指标属性值，指标属性应该是双精度类型，有2个变量函数可以使用。
// 调用属性的指示标识符。
bool IndicatorSetDouble(
    int prop_id,      // 标识符
    double prop_value // 将被设置的值
);

// 调用指示标识符和属性修饰语。
bool IndicatorSetDouble(
    int prop_id,       // 标识符
    int prop_modifier, // 修饰符
    double prop_value  // 将被设置的值
);

// 函数建立类似指标属性值，属性必须是整型或者颜色型的，有2个变量函数可以使用。
// 调用属性的指示标识符。
bool IndicatorSetInteger(
    int prop_id,   // 标识符
    int prop_value // 将被设置的值
);

// 调用指示标识符和属性修饰语。
bool IndicatorSetInteger(
    int prop_id,       // 标识符
    int prop_modifier, // 修饰符
    int prop_value     // 将被设置的值
);

// 函数建立类似指标属性值，指标属性必须是字符串型。有2个变量函数可以使用。
// 调用属性的指示标识符
bool IndicatorSetString(
    int prop_id,      // 标识符
    string prop_value // 将被设置的值
);

// 调用指示标识符和属性修饰语
bool IndicatorSetString(
    int prop_id,       // 标识符
    int prop_modifier, // 修饰符
    string prop_value  // 将被设置的值
);

// 该函数建立一定特征的相应值，指标性质应该是双精度型。
bool PlotIndexSetDouble(
    int plot_index,   // 图样式指数
    int prop_id,      // 属性标识符
    double prop_value // 将被设置的值
);

// 该函数建立一定特征的相应值，指标性质应该是整型，图表型，布尔型或者颜色型。有两种变量函数。
// 调用指定的属性标识符。
bool PlotIndexSetInteger(
    int plot_index, // 图样式指数
    int prop_id,    // 属性标识符
    int prop_value  // 将被设置的值
);

// 调用指定的属性标识符和修饰符。
bool PlotIndexSetInteger(
    int plot_index,    // 图样式指数
    int prop_id,       // 属性标识符
    int prop_modifier, // 属性修饰符
    int prop_value     // 将被设置的值
);

// 该函数设置了相应指标线的相应属性值。指标属性必须是一种字符串类型。
bool PlotIndexSetString(
    int plot_index,   // 图样式指数
    int prop_id,      // 属性标识符
    string prop_value // 将被设置的值
);

// 该函数建立一定特征的相应值，指标性质应该是整型，颜色型，布尔型或者字符型。有两种变量函数。
// 调用指定属性标识符。
int PlotIndexGetInteger(
    int plot_index, // 图样式指数
    int prop_id    // 属性标识符
);

// 调用指定属性标识符和修饰符。
int PlotIndexGetInteger(
    int plot_index,   // 绘图指数
    int prop_id,      // 属性标识符
    int prop_modifier // 属性修饰符
);
