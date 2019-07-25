#include "../AllConstants.mqh"

// https://www.mql5.com/zh/docs/common

// 在单独窗口中显示信息。
void Alert(
    string argument, // 第一值
    ...              // 其他值
);

// 函数返回 指针对象类型
ENUM_POINTER_TYPE CheckPointer(
    object *anyobject // 对象指针
);

// 图表左上角函数通过用户输出注解。
void Comment(
    string argument, // 第一值
    ...              // 下一值
);

// 通过指定方式转换来自数组的数据。
int CryptEncode(
    ENUM_CRYPT_METHOD method, // 方法
    const uchar data[],        // 源数组
    const uchar key[],         // 密钥
    char result[]             // 目标数组
);

// 执行数组数据逆转换，通过CryptEncode()转换。
int CryptEncode(
    ENUM_CRYPT_METHOD method, // 方法
    const uchar data[],        // 源数组
    const uchar key[],         // 密钥
    char result[]             // 目标数组
);

// 在排除故障中的程序断点。
void DebugBreak();

// 函数停止 EA交易 并从图表中卸载。
void ExpertRemove();

// 函数返回 指针 对象。
void *GetPointer(
    any_class anyobject // 任何类的对象
);

// 自从程序开始，GetTickCount()函数返回已过去的毫秒的数量。
int GetTickCount();

// GetMicrosecondCount() 函数返回MQL5程序开始后过去的微秒数。
long GetMicrosecondCount();

// 建立并显示对话框并管理它，一个对话框包括信息和页眉，任意预定义标签和命令按钮的组合。

int MessageBox(
    string text,           // 信息文本
    string caption = NULL, // 对话框表头
    int flags = 0          // 对话框按键设置
);

// 在一个周期内函数二次返回数字。
int PeriodSeconds(
    ENUM_TIMEFRAMES period = PERIOD_CURRENT // 图表周期
);

// 用来播放声音文件。
bool PlaySound(
    string filename // 文件名
);

// 在EA交易日志中输入消息。参量可以是各种类型。
void Print(
    void* argument, // 第一值
    ...              // 下一值
);

// 交易品种的形式和进入，EA交易的值与当前形式保持一致。
void PrintFormat(
    string format_string, // 格式行
    ...                   // 简单类型值
);

// 设立预先定义常量 _LastError 的值是0。
void ResetLastError();

// 根据文件创建资源
bool ResourceCreate(
    const string resource_name, // 资源名称
    const string path           // 文件的相对路径
);

enum ENUM_COLOR_FORMAT
{
    COLOR_FORMAT_XRGB_NOALPHA,   //阿尔法通道的组件被忽略
    COLOR_FORMAT_ARGB_RAW,       //程序端不处理颜色组件（用户必须正确设置）
    COLOR_FORMAT_ARGB_NORMALIZE, //程序端不处理颜色组件
};
// 基于像素数组创建资源
bool ResourceCreate(
    const string resource_name,    // 资源名称
    const int data[],             // 数据设置为数组
    int img_width,                 // 图像资源的宽度
    int img_height,                // 图像资源的高度
    int data_xoffset,              // 水平向右偏移图像左上角
    int data_yoffset,              // 垂直向下偏移图像左上角
    int data_width,                // 基于数据设置的图像总宽度
    ENUM_COLOR_FORMAT color_format // 颜色处理方案
);

// 该函数删除动态创建的资源 (释放分配的内存)。
bool ResourceFree(
    const string resource_name // 资源名称
);

// 函数阅读来自通过ResourceCreate()函数创建的 或 编译期间保存在 EX5 文件的图形资源的数据。
bool ResourceReadImage(
    const string resource_name, // 用于阅读的图形资源名称
    uint data[],                 // 用于从资源接收数据的数组
    uint &width,                 // 用于在资源中接收图像宽度
    uint &height                 // 用于在资源中接收图像高度
);

// 保存资源到指定文件。
bool ResourceSave(
    const string resource_name, // 资源名称
    const string file_name      // 文件名称
);

// 设置完成操作时返回程序端进程的代码。
void SetReturnError(
    int ret_code // 客户端完成代码
);

// 创建预先参量 _LastError ，使其值等于 ERR_USER_ERROR_FIRST + user_error
void SetUserError(
    ushort user_error // 错误号
);

// 在当前执行的EA交易或脚本中，该函数是指在指定的时间间隔内暂停交易业务。
void Sleep(
    int milliseconds // 间隔
);

// 该函数命令服务器完整操作。
bool TerminalClose(
    int ret_code // 关闭客户端代码
);

// 设置显示/隐藏EA中使用的指标的模式。这个函数仅用于在测试期间管理已用指标的可见性。
void TesterHideIndicators(
    bool hide // 标识
);

// 函数返回基于测试结果计算的指定统计参数的值。
double TesterStatistics(
    ENUM_STATISTICS statistic_id // ID
);

// 当测试时，给予程序操作完成命令。
void TesterStop();

// 在测试期间模拟存款的特殊函数。它在一些资金管理系统中使用。
bool TesterDeposit(
    double money // 存款金额
);

// 在测试过程中特殊函数模仿取消内存操作，可以用于资产管理系统中。
bool TesterWithdrawal(
    double money // 出金总额
);

// 通过考虑到当前输入语言和控制键状态的虚拟键码返回Unicode字符。

short  TranslateKey( 
   int  key_code      // 接收Unicode字符的键码 
   );

// 通过引用，函数重置变量
void  ZeroMemory( 
   void* variable      // 变量重置 
);