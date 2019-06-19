#include "../RootInclude.mqh"

// https://www.mql5.com/zh/docs/constants/indicatorconstants/customindicatorproperties

enum ENUM_INDEXBUFFER_TYPE{
    INDICATOR_DATA,    //描绘数据
    INDICATOR_COLOR_INDEX,    //颜色
    INDICATOR_CALCULATIONS,    //媒介运算的辅助缓冲区
};

enum ENUM_CUSTOMIND_PROPERTY_INTEGER{
    INDICATOR_DIGITS,    //描绘指标值的精确度    int
    INDICATOR_HEIGHT,    //修正指标窗口的高度(预处理命令 #property indicator_height)    int
    INDICATOR_LEVELS,    //指标窗口中的水平数量    int
    INDICATOR_LEVELCOLOR,    //水平线颜色    color               修饰符 = 层号
    INDICATOR_LEVELSTYLE,    //水平线类型    ENUM_LINE_STYLE  修饰符 = 层号
    INDICATOR_LEVELWIDTH,    //水平线厚度    int                修饰符 = 层号
};

enum ENUM_CUSTOMIND_PROPERTY_DOUBLE{
    INDICATOR_MINIMUM,    //指标窗口最小化    double
    INDICATOR_MAXIMUM,    //指标窗口最大化    double
    INDICATOR_LEVELVALUE,    //水平值    double            修饰符 = 层号
};

enum ENUM_CUSTOMIND_PROPERTY_STRING{
    INDICATOR_SHORTNAME,    //短指标名称    string
    INDICATOR_LEVELTEXT,    //水平描述    string     修饰符=层号
};
