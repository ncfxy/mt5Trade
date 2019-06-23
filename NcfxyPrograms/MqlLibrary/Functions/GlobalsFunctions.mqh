#include "../AllConstants.mqh"

// https://www.mql5.com/zh/docs/globals

// 检测带有指定名称的全局变量的存在性。
bool GlobalVariableCheck(
    string name // 全局变量名称
);

// 当全局变量最后访问时返回时间。
datetime GlobalVariableTime(
    string name // 名称
);

// 从客户端中删除全局变量。
bool GlobalVariableDel(
    string name // 全局变量名称
);

// 返回客户端存在的全局变量存在值，有2个变量函数可以使用。
// 1. 立即返回全局变量值。
double GlobalVariableGet(
    string name // 全局变量名称
);

// 2. 返回真值或者错误值取决于函数是否成功运行。如果成功，客户端全局变量通过引用将变量传递到第二参量中。
bool GlobalVariableGet(
    string name,       // 全局变量名称
    double &double_var //该变量包括全局变量值
);

// 通过序列号返回全局变量名称。
string GlobalVariableName(
    int index // 全局变量列表中全局变量数
);

// 为全局变量设置新值，如果变量不存在，系统增添新的全局变量。
datetime GlobalVariableSet(
    string name, // 全局变量名称
    double value // 设置值
);

// 强制存储所有全局变量信息到磁盘。
void GlobalVariablesFlush();

// 函数试图建立暂时的全局变量，如果变量不存在，系统增设一个新的暂时全局变量。
bool GlobalVariableTemp(
    string name // 全局变量名称
);

// 如果当前值等于第三参量check_value，设置现有全局变量的新值。如果没有全局变量，函数将生成错误ERR_GLOBALVARIABLE_NOT_FOUND (4501)并且返回false。
bool GlobalVariableSetOnCondition(
    string name,       // 全局变量名称
    double value,      // 条件是true下的变量新值
    double check_value // 检测值的状态
);

// 删除客户端的全局变量。
int GlobalVariablesDeleteAll(
    string prefix_name = NULL, // 所有带有前缀的全局变量
    datetime limit_data = 0    // 所有该日期前已更改的全局变量
);

// 返回客户端所有全局变量的数量。
int GlobalVariablesTotal();
