#include "../AllConstants.mqh"

// https://www.mql5.com/zh/docs/signals

// 返回选定信号的 double 类型属性的值。
double SignalBaseGetDouble(
    ENUM_SIGNAL_BASE_DOUBLE property_id // 属性标识符
);

// 返回选定信号的integer 类型属性的值。
long SignalBaseGetInteger(
    ENUM_SIGNAL_BASE_INTEGER property_id // 属性标识符
);

// 返回选定信号的string 类型属性的值。
string SignalBaseGetString(
    ENUM_SIGNAL_BASE_STRING property_id // 属性标识符
);

// 选择来自信号组的信号，在程序端可以得到，用于进一步的工作。
bool SignalBaseSelect(
    int index // 信号指数
);

// 返回信号总额，在程序端可得。
int SignalBaseTotal();

// 返回信号复制设置的 double 类型属性的值。
double SignalInfoGetDouble(
    ENUM_SIGNAL_INFO_DOUBLE property_id // 属性标识符
);

// 返回信号复制设置的integer类型属性的值。
long SignalInfoGetInteger(
    ENUM_SIGNAL_INFO_INTEGER property_id // 属性标识符
);

// 返回信号复制设置的string类型属性的值。
string SignalInfoGetString(
    ENUM_SIGNAL_INFO_STRING property_id // 属性标识符
);

// 设置信号复制设置的 double 类型属性的值。
bool SignalInfoSetDouble(
    ENUM_SIGNAL_INFO_DOUBLE property_id, // 属性标识符
    double value                         // 新值
);

// 设置信号复制设置的integer 类型属性的值。
bool SignalInfoSetInteger(
    ENUM_SIGNAL_INFO_INTEGER property_id, // 属性标识符
    long value                            // 新值
);

// 订阅交易信号。
bool SignalSubscribe(
    long signal_id // 信号 id
);

// 取消订阅。
bool SignalUnsubscribe();
