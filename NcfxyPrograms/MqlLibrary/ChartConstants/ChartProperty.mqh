#include "../RootInclude.mqh"

// https://www.mql5.com/zh/docs/constants/chartconstants/enum_chart_property

enum ENUM_CHART_PROPERTY_INTEGER{
    CHART_SHOW,    //绘制价格图表。false情况下，不可绘制价格图表的任何属性并删除首行图表边界，包括时间和价格范围，快速导航条，日历事件标签，交易标签，指标和柱形图提示，指标子窗口，交易量直方图等等。
                    // 禁用绘制是使用图形资源创建自定义程序界面的理想方案。
                    // 无论CHART_SHOW属性值多少，都会始终绘制图形对象。    bool
    CHART_IS_OBJECT,    //识别“图表”(OBJ_CHART) 对象 – 图形对象返回true。真实图表返回false    bool   r/o
    CHART_BRING_TO_TOP,    //显示其他图表之上的图表    bool   w/o
    CHART_CONTEXT_MENU,    //启用/禁用右击访问快捷菜单。
                            // 当CHART_CONTEXT_MENU=false时，仅禁用图表快捷菜单。图表上对象的快捷菜单仍可使用。    bool  （默认为true）
    CHART_CROSSHAIR_TOOL,    //启用/禁用中间单击访问十字光标工具。    bool  （默认为true）
    CHART_MOUSE_SCROLL,    //使用鼠标左键水平滚动图表。如果以下属性的值设为true也可以垂直滚动：CHART_SCALEFIX, CHART_SCALEFIX_11 or CHART_SCALE_PT_PER_BAR
                            // 当CHART_MOUSE_SCROLL=false时，不可使用鼠标滚轮滚动图表。    bool
    CHART_EVENT_MOUSE_WHEEL,    //发送鼠标滚轮事件的消息(CHARTEVENT_MOUSE_WHEEL) 到图表上的所有mql5程序    bool  （默认为true）
    CHART_EVENT_MOUSE_MOVE,    //发送鼠标移动和鼠标点击事件的通知 (CHARTEVENT_MOUSE_MOVE) 到图表上的所有mql5程序    bool
    CHART_EVENT_OBJECT_CREATE,    //发送创建新对象的事件通知 (CHARTEVENT_OBJECT_CREATE) 到图表上的所有mql5程序    bool
    CHART_EVENT_OBJECT_DELETE,    //发送删除对象的事件通知 (CHARTEVENT_OBJECT_DELETE) 到图表上的所有mql5程序    bool
    CHART_MODE,    //图表类型（蜡烛台、字节或线）    enum     ENUM_CHART_MODE
    CHART_FOREGROUND,    //背景的价格图表    bool
    CHART_SHIFT,    //左边缩进价格图表    bool
    CHART_AUTOSCROLL,    //自动移向图表的右边框    bool
    CHART_KEYBOARD_CONTROL,    //可以使用键盘管理图表（"Home"，"End"，"PageUp"，"+"，"-"，"up arrow"等）。设置为 false 的CHART_KEYBOARD_CONTROL在保留接收按下OnChartEvent()函数事件按键的能力时，禁止图表滚动和缩放。    bool
    CHART_QUICK_NAVIGATION,    //允许图表拦截空格键和回车键来激活快速导航栏。双击鼠标或按下空格/回车键后，快速导航栏自动出现在图表底部。这可以使您快速更改交易品种，时间周期和第一可视栏日期。    bool
    CHART_SCALE,    //测量    int        从0到5
    CHART_SCALEFIX,    //固定标盘模式    bool
    CHART_SCALEFIX_11,    //测量方式1:1    bool
    CHART_SCALE_PT_PER_BAR,    //每字节指定相关测量    bool
    CHART_SHOW_OHLC,    //在左上角显示OHLC值    bool
    CHART_SHOW_BID_LINE,    //在图表水平线上显示出价值    bool
    CHART_SHOW_ASK_LINE,    //在图表水平线上显示要价值    bool
    CHART_SHOW_LAST_LINE,    //在图表水平线上显示最终值    bool
    CHART_SHOW_PERIOD_SEP,    //在相邻周期显示垂直分离器    bool
    CHART_SHOW_GRID,    //在图表中显示网格    bool
    CHART_SHOW_VOLUMES,    //在图表中显示成交量    enum     ENUM_CHART_VOLUME_MODE
    CHART_SHOW_OBJECT_DESCR,    //显示对象的文本描述 (不可用于所有对象)    bool
    CHART_VISIBLE_BARS,    //图表上显示的字节数量    int r/o
    CHART_WINDOWS_TOTAL,    //图表窗口总数，包括指标预览窗口    int r/o
    CHART_WINDOW_IS_VISIBLE,    //预览窗口可见性    bool r/o   修饰符 - 子窗口号
    CHART_WINDOW_HANDLE,    //处理图表窗口（HWND）    int r/o
    CHART_WINDOW_YDISTANCE,    //指标子窗口的上帧与主图表窗口的上帧之间的距离，沿着Y轴垂直，以像素为单位。在鼠标事件情况下，根据图表主窗口的坐标传递光标坐标，而将指标子窗口的图形对象坐标设置相对于子窗口的左上角。
                                //需要该值是为了将主图表的绝对坐标转换为子窗口的本地坐标，以便图形对象的正确工作，该坐标设置位置相对于子窗口帧的左上角。    int r/o   修饰符 - 子窗口号
    CHART_FIRST_VISIBLE_BAR,    //图表中第一可见字节字符。字节索引同于时序列 。    int r/o
    CHART_WIDTH_IN_BARS,    //以字节转发图表    int r/o
    CHART_WIDTH_IN_PIXELS,    //像素转发图表    int r/o
    CHART_HEIGHT_IN_PIXELS,    //图表像素高度    int     修饰符 - 子窗口号
    CHART_COLOR_BACKGROUND,    //图表背景颜色    color
    CHART_COLOR_FOREGROUND,    //轴线、缩放和OHLC线的颜色    color
    CHART_COLOR_GRID,    //网格颜色    color
    CHART_COLOR_VOLUME,    //成交量颜色和开仓水平    color
    CHART_COLOR_CHART_UP,    //上升字节、阴影和大型烛台整体边界的颜色    color
    CHART_COLOR_CHART_DOWN,    //下降字节、阴影和支撑烛台的颜色    color
    CHART_COLOR_CHART_LINE,    //折线图颜色和日语烛台躲闪颜色    color
    CHART_COLOR_CANDLE_BULL,    //大型烛台主体颜色    color
    CHART_COLOR_CANDLE_BEAR,    //承受烛台主体颜色    color
    CHART_COLOR_BID,    //出价水平颜色    color
    CHART_COLOR_ASK,    //要价水平颜色    color
    CHART_COLOR_LAST,    //最后执行交易价格水平线颜色（Last）    color
    CHART_COLOR_STOP_LEVEL,    //停止订购水平颜色（斩仓和获利）    color
    CHART_SHOW_TRADE_LEVELS,    //在图表中显示交易水平（开仓水平、斩仓、获利和代办订单）    bool
    CHART_DRAG_TRADE_LEVELS,    //用鼠标在图表上拖拽交易水平的权限。拖拽模式默认启用(true 值)    bool
    CHART_SHOW_DATE_SCALE,    //显示图表的时间比例    bool
    CHART_SHOW_PRICE_SCALE,    //显示图表的价格比例    bool
    CHART_SHOW_ONE_CLICK,    //显示 "单击交易"面板在图表上    bool
    CHART_IS_MAXIMIZED,    //图表窗口最大化    bool
    CHART_IS_MINIMIZED,    //图表窗口最小化    bool
    CHART_IS_DOCKED,    //图表窗口靠边。如果设置为false，图表可能被拖拽到程序端区域以外    bool
    CHART_FLOAT_LEFT,    //相对于虚拟屏幕的没有靠边的图表窗口的左坐标    int
    CHART_FLOAT_TOP,    //相对于虚拟屏幕的没有靠边的图表窗口的顶部坐标    int
    CHART_FLOAT_RIGHT,    //相对于虚拟屏幕的没有靠边的图表窗口的右坐标    int
    CHART_FLOAT_BOTTOM,    //相对于虚拟屏幕的没有靠边的图表窗口的底部坐标    int
};

enum ENUM_CHART_PROPERTY_DOUBLE{
    CHART_SHIFT_SIZE,    //大小在右边百分比边界从零字节缩进    double (10%-50%)
    CHART_FIXED_POSITION,    //图表以百分比定位左边界的位置。在水平时间轴用小的灰白三角形标记定位的图表。只有在禁止进入订单号时图表自动滚到右侧它才会显示 (见 CHART_AUTOSCROLL property)。放大缩小时，定位的柱保留原位。    双精度
    CHART_FIXED_MAX,    //固定图表最大值    双精度
    CHART_FIXED_MIN,    //固定图表最小值    双精度
    CHART_POINTS_PER_BAR,    //测量相关的每个字节    双精度
    CHART_PRICE_MIN,    //图表最小值    double r/o   修饰符 - 子窗口号
    CHART_PRICE_MAX,    //图表最大值    double r/o   修饰符 - 子窗口号
};

enum ENUM_CHART_PROPERTY_STRING{
    CHART_COMMENT,    //图表中的评论文本    string
    CHART_EXPERT_NAME,    //在指定chart_id 图表上运行的EA交易的名称    string
    CHART_SCRIPT_NAME,    //在指定chart_id 图表上运行的脚本名称    string
};