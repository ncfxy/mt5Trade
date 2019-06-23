#include "../AllConstants.mqh"

// https://www.mql5.com/zh/docs/chart_operations

// 在图表中应用指定文件中的特定模板。该命令添加到图表信息队列并且将在处理完之前所有命令后开始执行。
bool ChartApplyTemplate(
    long chart_id,        // 图表 ID
    const string filename // 模板文件名
);

// 以指定名称在模板中保存当前图表设置。
bool ChartSaveTemplate(
    long chart_id,        // 图表 ID
    const string filename // 保存模板的文件名
);

// 函数返回画指标的子窗口数。该函数有两个变体。
// 1. 函数在指定图表中搜索带有指定的指标“缩写名”子窗口（缩写名在子窗口的左上部显示），成功的话返回子窗口数。
int ChartWindowFind(
    long chart_id,             // 图表标识符
    string indicator_shortname // 短指标名, 见 INDICATOR_SHORTNAME
);

// 2. 函数必须从自定义指标中调用。返回指标工作的子窗口数。
int ChartWindowFind();

// 从表现时间/价格的图表坐标转变到X和Y轴
bool ChartTimePriceToXY(
    long chart_id,  // 图表 ID
    int sub_window, // 子窗口数量
    datetime time,  // 图表上的时间轴
    double price,   // 图表上的价格轴
    int &x,         // 图表上时间的X轴
    int &y          // 图表上价格的Y轴
);

// 转变图表的X和Y轴到时间和价格值
bool ChartXYToTimePrice(
    long chart_id,   // 图表 ID
    int x,           // 图表的 X 轴
    int y,           // 图表的 Y 轴
    int &sub_window, // 子窗口的数量
    datetime &time,  // 图表上的时间
    double &price    // 图表上的价格
);

// 打开指定交易品种和周期的新图表。
long ChartOpen(
    string symbol,         // 交易品种名称
    ENUM_TIMEFRAMES period // 周期
);

// 关闭指定图表。
bool ChartClose(
    long chart_id = 0 // 图表 ID
);

// 返回客户端第一图表ID。
long ChartFirst();

// 返回指定图表旁边的图表ID。
long ChartNext(
    long chart_id // 图表 ID
);

// 返回指定图表的交易品种名称。
string ChartSymbol(
    long chart_id = 0 // 图表 ID
);

// 返回指定图表的时间表 周期 。
ENUM_TIMEFRAMES ChartPeriod(
    long chart_id = 0 // 图表 ID
);

// 指定图表被迫重画调用此函数。
void ChartRedraw(
    long chart_id = 0 // 图表 ID
);

// 设置指定图表相关属性值。图表属性是双精度类型。该命令添加到图表信息队列并且将在处理完之前所有命令后开始执行。
bool ChartSetDouble(
    long chart_id,                      // 图表 ID
    ENUM_CHART_PROPERTY_DOUBLE prop_id, // 属性 ID
    double value                        // 值
);

// 设置指定图表相关属性值。图表属性必须是日期时间，整型，颜色，布尔型或者字符型。该命令添加到图表信息队列并且将在处理完之前所有命令后开始执行。
bool ChartSetInteger(
    long chart_id,                       // 图表 ID
    ENUM_CHART_PROPERTY_INTEGER prop_id, // 属性 ID
    long value                           // 值
);

// 设置指定图表相关属性值。图表属性必须是日期时间，整型，颜色，布尔型或者字符型。该命令添加到图表信息队列并且将在处理完之前所有命令后开始执行。
bool ChartSetInteger(
    long chart_id,                          // 图表 ID
    int prop_id,                            // 属性 ID
    ENUM_CHART_PROPERTY_INTEGER sub_window, // 子窗口号
    long value                              // 值
);

// 设置指定图表的相关属性值。图表属性必须是字符串类型。该命令添加到图表信息队列并且将在处理完之前所有命令后开始执行。
bool ChartSetString(
    long chart_id,                      // 图表 ID
    ENUM_CHART_PROPERTY_STRING prop_id, // 属性 ID
    string str_value                    // 值
);

// 返回指定图表的相关属性值。图表属性必须是双精度类型。有两个函数调用变体。
// 1. 直接返回属性值。
double ChartGetDouble(
    long chart_id,                      // 图表 ID
    ENUM_CHART_PROPERTY_DOUBLE prop_id, // 属性 ID
    int sub_window = 0                  // 子窗口号，如果需要的话
);

// 2. 根据函数成功与否，返回 true 或 false。如果成功，属性值置于引用传递的目标变量double_var。
bool ChartGetDouble(
    long chart_id,                      // 图表 ID
    ENUM_CHART_PROPERTY_DOUBLE prop_id, // 属性 ID
    int sub_window,                     // 子窗口号
    double &double_var                  // 用于图表属性的目标变量
);

// 返回指定图表相关属性值。图表属性必须是日期时间，整型，布尔型类型。有两种函数调用变体。
// 1. 直接返回属性值。
long ChartGetInteger(
    long chart_id,                       // 图表 ID
    ENUM_CHART_PROPERTY_INTEGER prop_id, // 属性 ID
    int sub_window = 0                   // 子窗口号，如果需要的话
);

// 2. 按照函数成功与否，返回 true 或者 false。如果成功，属性值置于引用传递的目标变量long_var。
bool ChartGetInteger(
    long chart_id,                       // 图表 ID
    ENUM_CHART_PROPERTY_INTEGER prop_id, // 属性 ID
    int sub_window,                      // 子窗口号
    long &long_var                       // 属性目标值
);

// 返回指定图表的相关属性值。图表属性必须是字符串型。有两个函数调用变体。
// 1. 直接返回属性值。
string ChartGetString(
    long chart_id,                     // 图表 ID
    ENUM_CHART_PROPERTY_STRING prop_id // 属性 ID
);

// 2. 按照函数成功与否，返回true或者false。如果成功，属性值置于引用传递的目标变量string_var。
bool ChartGetString(
    long chart_id,                      // 图表 ID
    ENUM_CHART_PROPERTY_STRING prop_id, // 属性 ID
    string &string_var                  // 属性目标值
);

// 通过指定的关系柱完成指定图表到图表中的指定位置的转换。
bool ChartNavigate(
    long chart_id,                // 图表 ID
    ENUM_CHART_POSITION position, // 位置
    int shift = 0                 // 移动值
);

// 返回当前图表ID。
long ChartID();

// 用指定处理程序在指定图表窗口填加指标。Indicator and chart should be generated on the same symbol and time frame.
bool ChartIndicatorAdd(
    long chart_id,       // 图表 ID
    int sub_window,      // 子窗口号
    int indicator_handle // 指标处理
);

// 从指定图表窗口删除指定名称的指标。
bool ChartIndicatorDelete(
    long chart_id,                   // 图表 id
    int sub_window,                  // 子窗口数量
    const string indicator_shortname // 指标的缩略名
);

// 在指定图表窗口返回指定缩略名的指标句柄。
int ChartIndicatorGet(
    long chart_id,                   // 图表 ID
    int sub_window,                  // 子窗口数量
    const string indicator_shortname // 指标的缩略名
);

// 在指定图表窗口根据指标列表编号返回指标缩略名。
string ChartIndicatorName(
    long chart_id,  // 图表 id
    int sub_window, // 子窗口数量
    int index       // 添加到图表子窗口的指标列表中的指标标引
);

// 返回应用到指定图表窗口的指标数量。
int ChartIndicatorsTotal(
    long chart_id, // 图表 id
    int sub_window // 子窗口数量
);

// 返回图表子窗口EA交易或者脚本下跌到的数（指数）。0代表图表主窗口。
int ChartWindowOnDropped();

// 返回图表点一致的EA交易或者脚本下跌到的价格坐标。
double ChartPriceOnDropped();

// 返回图表点一致的EA交易或者脚本下跌到的时间坐标。
datetime ChartTimeOnDropped();

// 返回EA交易或者脚本下跌到的图表点x坐标。
int ChartXOnDropped();

// 返回EA交易或者脚本下跌到的图表点Y坐标。
int ChartYOnDropped();

// 更改指定图表的交易品种和周期。函数不同步，例如，不等执行完成就发送命令。该命令添加到图表信息队列并且将在处理完之前所有命令后开始执行。

bool ChartSetSymbolPeriod(
    long chart_id,         // 图表 ID
    string symbol,         // 交易品种名称
    ENUM_TIMEFRAMES period // 周期
);

// 函数提供gif,png或bmp格式图表当前状态的屏幕截屏。
bool ChartScreenShot(
    long chart_id,                           // 图表 ID
    string filename,                         // 交易品种名称
    int width,                               // 宽度
    int height,                              // 高度
    ENUM_ALIGN_MODE align_mode = ALIGN_RIGHT // 对齐类型
);
