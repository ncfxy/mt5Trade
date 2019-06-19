#include "../RootInclude.mqh"

// https://www.mql5.com/zh/docs/constants/objectconstants/enum_object_property

enum ENUM_OBJECT_PROPERTY_INTEGER
{
    OBJPROP_COLOR,        //颜色    color
    OBJPROP_STYLE,        //类型    ENUM_LINE_STYLE
    OBJPROP_WIDTH,        //路线厚度    int
    OBJPROP_BACK,         //显示背景上的对象    bool
    OBJPROP_ZORDER,       //图形对象优先接收点击图表事件(CHARTEVENT_CLICK)。创建对象时默认设置零值；若需要可以提高优先级。当一个接一个地应用对象时，只有级别最高的那个可以收到CHARTEVENT_CLICK 事件。    long
    OBJPROP_FILL,         //颜色填充对象 ( 为OBJ_RECTANGLE，OBJ_TRIANGLE，OBJ_ELLIPSE，OBJ_CHANNEL， OBJ_STDDEVCHANNEL，OBJ_REGRESSION)    bool
    OBJPROP_HIDDEN,       //禁止在程序端菜单“图表”-“对象”-“对象列表”的对象列表中显示图形对象的名称。真实值允许隐藏列表的对象。默认下，true的设置用于显示日程表事件的对象，交易历史和 MQL5 程序创建的对象。若要看到这种 图形对象 和访问他们的属性，请点击“对象列表”窗口中的“全部”按钮。    bool
    OBJPROP_SELECTED,     //所选对象    bool
    OBJPROP_READONLY,     //在编辑对象上编辑文本    bool
    OBJPROP_TYPE,         //对象类型    ENUM_OBJECT   r/o
    OBJPROP_TIME,         //时间坐标    日期时间修饰符=定位点数字
    OBJPROP_SELECTABLE,   //对象可用性    bool
    OBJPROP_CREATETIME,   //创建对象时间    datetime    r/o
    OBJPROP_LEVELS,       //水平数量    int
    OBJPROP_LEVELCOLOR,   //线路水平颜色    颜色修饰符=水平数字
    OBJPROP_LEVELSTYLE,   //线路水平风格    ENUM_LINE_STYLE 修饰符=水平数字
    OBJPROP_LEVELWIDTH,   //线路水平厚度    int     修饰符=水平数字
    OBJPROP_ALIGN,        //“编辑”对象中的水平文本对齐 (OBJ_EDIT)    ENUM_ALIGN_MODE
    OBJPROP_FONTSIZE,     //字体大小    int
    OBJPROP_RAY_LEFT,     //向左发出射线    bool
    OBJPROP_RAY_RIGHT,    //向右发出射线    bool
    OBJPROP_RAY,          //垂直线通过图表的全部窗口    bool
    OBJPROP_ELLIPSE,      //显示裴波那契弧形对象的全部椭圆形 (OBJ_FIBOARC)    bool
    OBJPROP_ARROWCODE,    //箭头对象代码    char
    OBJPROP_TIMEFRAMES,   //时间表上的对象可见性    设置标识 flags
    OBJPROP_ANCHOR,       //图解对象的定位点    ENUM_ARROW_ANCHOR (用于 OBJ_ARROW),
                          //ENUM_ANCHOR_POINT (用于 OBJ_LABEL, OBJ_BITMAP_LABEL, OBJ_TEXT)
    OBJPROP_XDISTANCE,    //X轴定位点像素距离 (see note)    int
    OBJPROP_YDISTANCE,    //Y轴定位点像素距离 (see note)    int
    OBJPROP_DIRECTION,    //江恩物件趋势    ENUM_GANN_DIRECTION
    OBJPROP_DEGREE,       //埃利奥特波动标记水平    ENUM_ELLIOT_WAVE_DEGREE
    OBJPROP_DRAWLINES,    //埃利奥特波动标记排成一行    bool
    OBJPROP_STATE,        //按钮状态（按压/未按压）    bool
    OBJPROP_CHART_ID,     //“图表”对象的ID(OBJ_CHART)。它允许使用该对象的属性，好像使用图表操作中描述的函数的普通图表，但是有一些例外。    long   r/o
    OBJPROP_XSIZE,        //对象宽度沿着X轴，以像素表示。指定用于  OBJ_LABEL (只读), OBJ_BUTTON, OBJ_CHART, OBJ_BITMAP, OBJ_BITMAP_LABEL, OBJ_EDIT, OBJ_RECTANGLE_LABEL 对象    int
    OBJPROP_YSIZE,        //对象高度沿着Y轴，以像素表示。指定用于  OBJ_LABEL (只读), OBJ_BUTTON, OBJ_CHART, OBJ_BITMAP, OBJ_BITMAP_LABEL, OBJ_EDIT, OBJ_RECTANGLE_LABEL 对象    int
    OBJPROP_XOFFSET,      //图形对象“位图标签”和“位图”(OBJ_BITMAP_LABEL 和 OBJ_BITMAP)中的 矩形可见区域 左上角的X坐标。该值由原始图片左上角对应的像素设置。    int
    OBJPROP_YOFFSET,      //图形对象“位图标签”和“位图”(OBJ_BITMAP_LABEL 和 OBJ_BITMAP)中的 矩形可见区域 左上角的Y坐标。该值由原始图片左上角对应的像素设置。    int
    OBJPROP_PERIOD,       //图解对象时间表    ENUM_TIMEFRAMES
    OBJPROP_DATE_SCALE,   //显示图解对象时间比例    bool
    OBJPROP_PRICE_SCALE,  //显示图解对象价格比例    bool
    OBJPROP_CHART_SCALE,  //图解对象测量    0-5的整数值
    OBJPROP_BGCOLOR,      //编辑对象背景颜色 OBJ_EDIT, OBJ_BUTTON, OBJ_RECTANGLE_LABEL    color
    OBJPROP_CORNER,       //图表连接到图解对象    ENUM_BASE_CORNER
    OBJPROP_BORDER_TYPE,  //“矩形标签”对象的边界类型    ENUM_BORDER_TYPE
    OBJPROP_BORDER_COLOR, //OBJ_EDIT 和 OBJ_BUTTON 对象的边界色    color
};

// 设置属性值，无修饰符
bool ObjectSetInteger(
    long chart_id,                        // 图表标识符
    string name,                          // 物件名称
    ENUM_OBJECT_PROPERTY_INTEGER prop_id, // 属性
    long prop_value                       // 值
);

// 设置表明修饰符属性值
bool ObjectSetInteger(
    long chart_id,                        // 图表标识符
    string name,                          // 物件名称
    ENUM_OBJECT_PROPERTY_INTEGER prop_id, // 属性
    int prop_modifier,                    // 修饰符
    long prop_value                       // 值
);

// 1.即时返回属性值。
long ObjectGetInteger(
    long chart_id,                        // 图表标识符
    string name,                          // 物件名称
    ENUM_OBJECT_PROPERTY_INTEGER prop_id, // 属性标识符
    int prop_modifier = 0                 // 属性修饰符, 如果需要的话
);

// 2. 返回 true 或者 false, 取决于函数是否成功。 如果成功，属性值通过上一参量以引用的方式传递安置接收变量。
bool ObjectGetInteger(
    long chart_id,                              // 图表标识符
    string name,                                // 物件名称
    int prop_id,                                // 属性标识符
    ENUM_OBJECT_PROPERTY_INTEGER prop_modifier, // 属性修饰符
    long &long_var                              // 这里接受属性值
);

enum ENUM_OBJECT_PROPERTY_DOUBLE
{
    OBJPROP_PRICE,      //价格坐标    double   修饰符=定位点号
    OBJPROP_LEVELVALUE, //水平值    double   修饰符=水平号
    OBJPROP_SCALE,      //比例（江恩对象和斐波纳契 弧线）    double
    OBJPROP_ANGLE,      //角度。对于程序创建的，无指定角度的对象来说，它的值等同于 EMPTY_VALUE    double
    OBJPROP_DEVIATION,  //标准偏差通道误差    double
};

// 设置属性值，无修饰符
bool ObjectSetDouble(
    long chart_id,                       // 图表标识符
    string name,                         // 物件名称
    ENUM_OBJECT_PROPERTY_DOUBLE prop_id, // 属性
    double prop_value                    // 值
);

// 设置表明修饰符属性值
bool ObjectSetDouble(
    long chart_id,                       // 图表标识符
    string name,                         // 物件名称
    ENUM_OBJECT_PROPERTY_DOUBLE prop_id, // 属性
    int prop_modifier,                   // 修饰符
    double prop_value                    // 值
);

// 1. 即时返回属性值。
double ObjectGetDouble(
    long chart_id,                       // 图表标识符
    string name,                         // 物件名称
    ENUM_OBJECT_PROPERTY_DOUBLE prop_id, // 属性标识符
    int prop_modifier = 0                // 属性修饰符, 如果需要的话
);

// 2. 返回 true 或者 false, 取决于函数是否成功。 如果成功，属性值通过上一参量以引用的方式传递安置接收变量。
bool ObjectGetDouble(
    long chart_id,                       // 图表标识符
    string name,                         // 物件名称
    ENUM_OBJECT_PROPERTY_DOUBLE prop_id, // 属性标识符
    int prop_modifier,                   // 属性修饰符
    double &double_var                   // 这里接受属性值
);

enum ENUM_OBJECT_PROPERTY_STRING
{
    OBJPROP_NAME,      //物件名称    string
    OBJPROP_TEXT,      //物件描述（物件中包含的文本）    string
    OBJPROP_TOOLTIP,   //提示信息文本。如果没有设置属性，那么将显示程序端自动生成的提示信息。提示信息可以通过设置"\n" (line feed) 值来禁用    string
    OBJPROP_LEVELTEXT, //水平描述    string   修饰符=水平号
    OBJPROP_FONT,      //字体    string
    OBJPROP_BMPFILE,   //文件的位图标签名称   另见 Resources    string   修饰符: 0-state ON, 1-state OFF
    OBJPROP_SYMBOL,    //图表对象的交易品种    string
};

// 设置属性值，无修饰符
bool ObjectSetString(
    long chart_id,                       // 图表标识符
    string name,                         // 物件名称
    ENUM_OBJECT_PROPERTY_STRING prop_id, // 属性
    string prop_value                    // 值
);

// 设置表明修饰符属性值
bool ObjectSetString(
    long chart_id,                       // 图表标识符
    string name,                         // 物件名称
    ENUM_OBJECT_PROPERTY_STRING prop_id, // 属性
    int prop_modifier,                   // 修饰符
    string prop_value                    // 值
);

// 1.即时返回属性值。
string ObjectGetString(
    long chart_id,                       // 图表标识符
    string name,                         // 物件名称
    ENUM_OBJECT_PROPERTY_STRING prop_id, // 属性标识符
    int prop_modifier = 0                // 属性修饰符, 如果需要的话
);

// 2. 返回 true 或者 false, 取决于函数是否成功。 如果成功，属性值通过上一参量以引用的方式传递安置接收变量。
bool ObjectGetString(
    long chart_id,                       // 图表标识符
    string name,                         // 物件名称
    ENUM_OBJECT_PROPERTY_STRING prop_id, // 属性标识符
    int prop_modifier,                   // 属性修饰符
    string &string_var                   // 这里接受属性值
);

enum ENUM_BORDER_TYPE
{
    BORDER_FLAT,   //平面造型
    BORDER_RAISED, //突出造型
    BORDER_SUNKEN, //凹陷造型
};

enum ENUM_ALIGN_MODE
{
    ALIGN_LEFT,   //左对齐
    ALIGN_CENTER, //集中(仅用于编辑对象)
    ALIGN_RIGHT,  //右对齐
};
