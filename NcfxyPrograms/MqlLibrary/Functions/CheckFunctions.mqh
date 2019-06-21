#include "../AllConstants.mqh"

// https://www.mql5.com/zh/docs/check

// 返回 _LastError系统变量目录。
int GetLastError();

// 检测MQL5程序的强制关机。
bool IsStopped();

// 返回代码 无法初始化原因 。
int UninitializeReason();

// 在MQL5程序环境中该函数返回一定值。
int TerminalInfoInteger(
    int property_id // 属性标识符
);

// 返回mql5程序环境相应属性的值。
double TerminalInfoDouble(
    int property_id // 属性的标识符
);

// 在MQL5程序环境中该函数返回一定值，该属性一定是字符串型。
string TerminalInfoString(
    int property_id // 属性标识符
);

// 返回运行的MQL程序的类似属性值。
int MQLInfoInteger(
    int property_id // 属性标识符
);

// 返回运行中的MQL5程序的类似属性值。
string MQLInfoString(
    int property_id // 属性标识符
);

// 返回当前图表的交易品种名称。
string Symbol();

// 返回当前图表的时间表。
ENUM_TIMEFRAMES Period();

// 返回当前图表交易品种价格精确度的小数位数数量。
int Digits();

// 在引用货币中返回当前交易品种大小点。
double Point();
