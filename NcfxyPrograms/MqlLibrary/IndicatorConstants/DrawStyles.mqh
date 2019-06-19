#include "../RootInclude.mqh"

// https://www.mql5.com/zh/docs/constants/indicatorconstants/drawstyles

enum ENUM_DRAW_TYPE{
    DRAW_NONE,    //没有画线    1
    DRAW_LINE,    //画线    1
    DRAW_SECTION,    //线条    1
    DRAW_HISTOGRAM,    //从0位线画柱状图    1
    DRAW_HISTOGRAM2,    //两个指标命令的柱状图    2
    DRAW_ARROW,    //画箭头    1
    DRAW_ZIGZAG,    //之字设计允许垂直界面    2
    DRAW_FILLING,    //两层间的颜色    2
    DRAW_BARS,    //以字符序列展示    4
    DRAW_CANDLES,    //以蜡烛台序列展示    4
    DRAW_COLOR_LINE,    //多色线    1
    DRAW_COLOR_SECTION,    //多色分段    1
    DRAW_COLOR_HISTOGRAM,    //从0线开始的多色直方图    1
    DRAW_COLOR_HISTOGRAM2,    //两个指标缓冲区的多色直方图    2
    DRAW_COLOR_ARROW,    //描绘多色箭头    1
    DRAW_COLOR_ZIGZAG,    //多色之字形    2
    DRAW_COLOR_BARS,    //多色字节    4
    DRAW_COLOR_CANDLES,    //多色蜡烛台    4
};

enum ENUM_PLOT_PROPERTY_INTEGER{
    PLOT_ARROW,    //DRAW_ARROW类型箭头代码    uchar
    PLOT_ARROW_SHIFT,    //DRAW_ARROW类型垂直箭头转换    int
    PLOT_DRAW_BEGIN,    //在DataWindow中没有描绘和值的原始字节数量    int
    PLOT_DRAW_TYPE,    //图解建筑类型    ENUM_DRAW_TYPE
    PLOT_SHOW_DATA,    //在DataWindow中显示建筑值标志    bool
    PLOT_SHIFT,    //在字节中与时间轴一起描绘的指标转换    int
    PLOT_LINE_STYLE,    //画线类型    ENUM_LINE_STYLE
    PLOT_LINE_WIDTH,    //画线层次    int
    PLOT_COLOR_INDEXES,    //颜色数量    int
    PLOT_LINE_COLOR,    //包含绘画颜色的缓冲区指标    颜色 修饰符 = 颜色数量指标
};

enum ENUM_PLOT_PROPERTY_DOUBLE{
    PLOT_EMPTY_VALUE,    //测绘空值，没有绘图    double
};

enum ENUM_PLOT_PROPERTY_STRING{
    PLOT_LABEL,    //显示在DataWindow中的指标图解系列的名称. 当使用复杂的需要多个指标缓冲区来显示的图形风格时，可以使用","作为分隔符来指定每个缓冲区的名称。示例代码显示在 DRAW_CANDLES    string
};

enum ENUM_LINE_STYLE{
    STYLE_SOLID,    //实线
    STYLE_DASH,    //折线
    STYLE_DOT,    //虚线
    STYLE_DASHDOT,    //折点线
    STYLE_DASHDOTDOT,    //双折点线
};
