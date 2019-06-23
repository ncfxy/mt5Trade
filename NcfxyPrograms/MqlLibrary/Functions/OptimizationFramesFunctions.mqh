#include "../AllConstants.mqh"

// https://www.mql5.com/zh/docs/optimization_frames

// 移动阅读帧的指针至起点并重置之前设置的过滤器。
bool FrameFirst();

// 设置帧阅读过滤器并移动指针至起点。
bool FrameFilter(
    const string name, // 公共名称/标签
    long id            // 公共 ID
);

// 阅读帧并移动指针至下一个。有两个函数变量。
// 1. 调用接收一个数值
bool FrameNext(
    ulong &pass,  // 添加帧时的优化传递数
    string &name, // 公共名称/标签
    long &id,     // 公共 ID
    double &value // 值
);

// 2. 调用接收真的所有数据
bool FrameNext(
    ulong &pass,   // 添加帧时的优化传递数
    string &name,  // 公共名称/标签
    long &id,      // 公共 ID
    double &value, // 值
    void *data[]   // 任何类型的数组
);

// 接收形成指定传递数帧的输入参数。
bool FrameInputs(
    ulong pass,            // 优化传递数
    string *parameters[],  // 形成"parameterN=valueN"字符串的数组
    uint &parameters_count // 参数总数
);

// 添加数据帧。有两个函数变量。
// 1. 添加文件数据
bool FrameAdd(
    const string name,    // 公共名称/标签
    long id,              // 公共 ID
    double value,         // 值
    const string filename // 数据文件的名称
);

// 2. 添加任何类型数组的数据
bool FrameAdd(
    const string name, // 公共名称/标签
    long id,           // 公共 ID
    double value,      // 值
    const void *data[] // 任何类型的数组
);

// 在策略测试优化EA期间，接收范围值的数据和输入变量的改变步骤。有两个函数变量。
// 1. 接收整型输入参数的数据
bool ParameterGetRange(
    const string name, // 参数 (输入变量) 名称
    bool &enable,      // 启用参数优化
    long &value,       // 参数值
    long &start,       // 初始值
    long &step,        // 改变步骤
    long &stop         // 最终值
);

// 2. 接收真实类型输入参数的数据
bool ParameterGetRange(
    const string name, // 参数(输入变量)名称
    bool &enable,      // 启用参数优化
    double &value,     // 参数值
    double &start,     // 初始值
    double &step,      // 改变步骤
    double &stop       // 最终值
);

// 在策略测试优化EA期间，指定使用输入变量：值，改变步骤，初始值和最终值。有两个函数变量。
// 1. 指定整型输入参数的数据
bool ParameterSetRange(
    const string name, // 参数 (输入变量) 名称
    bool enable,       // 启用参数优化
    long value,        // 参数值
    long start,        // 初始值
    long step,         // 改变步骤
    long stop          // 最终值
);

// 2. 指定真实类型输入参数的数据
bool ParameterSetRange(
    const string name, // 参数(输入变量)名称
    bool enable,       // 启用参数优化
    double value,      // 参数值
    double start,      // 初始值
    double step,       // 改变步骤
    double stop        // 最终值
);
