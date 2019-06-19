#include "../RootInclude.mqh"

// https://www.mql5.com/zh/docs/constants/environment_state/mql5_programm_info

enum ENUM_MQL_INFO_INTEGER
{
    MQL_MEMORY_LIMIT,    //MQL5程序最大可能的动态内存数，MB计算    int
    MQL_MEMORY_USED,     //MQL5程序使用的内存大小，MB计算    int
    MQL_PROGRAM_TYPE,    //MQL5程序类型    ENUM_PROGRAM_TYPE
    MQL_DLLS_ALLOWED,    //允许为已生效的程序交易    bool
    MQL_TRADE_ALLOWED,   //允许为已生效的程序交易    bool
    MQL_SIGNALS_ALLOWED, //允许为已生效的程序更改信号    bool
    MQL_DEBUG,           //表示程序在调试模式下运行    bool
    MQL_PROFILER,        //表示程序在代码分析模式下运行    bool
    MQL_TESTER,          //表示程序在测试中运行    bool
    MQL_FORWARD,         //表示程序在前向测试过程中运行    bool
    MQL_OPTIMIZATION,    //表示程序在优化模式下运行    bool
    MQL_VISUAL_MODE,     //表示程序在可视测试模式下运行    bool
    MQL_FRAME_MODE,      //表示EA交易在收集优化结果框架模式下运行    bool
    MQL_LICENSE_TYPE,    //EX5模块的许可证类型。许可证涉及EX5模块，从这里使用 MQLInfoInteger(MQL_LICENSE_TYPE)发出请求。    ENUM_LICENSE_TYPE
};

int MQLInfoInteger(
    ENUM_MQL_INFO_INTEGER property_id // 属性标识符
);

enum ENUM_MQL_INFO_STRING
{
    MQL_PROGRAM_NAME, //mql5已执行程序名称    string
    MQL_PROGRAM_PATH, //以执行系统路径    string
};

string MQLInfoString(
    ENUM_MQL_INFO_STRING property_id // 属性标识符
);

enum ENUM_PROGRAM_TYPE
{
    PROGRAM_SCRIPT,    //脚本
    PROGRAM_EXPERT,    //专家
    PROGRAM_INDICATOR, //指标
};

enum ENUM_LICENSE_TYPE
{
    LICENSE_FREE, //免费无限使用版
    LICENSE_DEMO, //市场付费产品的试用版仅在策略测试中工作
    LICENSE_FULL, //购买的授权版允许至少5次激活。激活次数由卖家设定。卖家可以提高允许的激活次数
    LICENSE_TIME, //有期限限制的授权版
};