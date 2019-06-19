#include "../RootInclude.mqh"

// https://www.mql5.com/zh/docs/constants/chartconstants/enum_chartevents

enum ENUM_CHART_EVENT{
    CHARTEVENT_KEYDOWN,    //打键次数
    CHARTEVENT_MOUSE_MOVE,    //鼠标移动，鼠标点击 (如果 CHART_EVENT_MOUSE_MOVE=true 为图表设置)
    CHARTEVENT_MOUSE_WHEEL,    //按下或滚动鼠标滚轮(如果CHART_EVENT_MOUSE_WHEEL=True为图表设置)
    CHARTEVENT_OBJECT_CREATE,    //图解对象 创建 (如果 CHART_EVENT_OBJECT_CREATE=true 为图表设置)
    CHARTEVENT_OBJECT_CHANGE,    //图解对象 通过属性对话改变性质
    CHARTEVENT_OBJECT_DELETE,    //图解对象 删除  (如果 CHART_EVENT_OBJECT_DELETE=true 为图表设置)
    CHARTEVENT_CLICK,    //点击一个图表
    CHARTEVENT_OBJECT_CLICK,    //点击 图解对象
    CHARTEVENT_OBJECT_DRAG,    //拖放 图解对象
    CHARTEVENT_OBJECT_ENDEDIT,    //在图表对象编辑里进行文本末尾编辑
    CHARTEVENT_CHART_CHANGE,    //通过属性对话框改变图表大小或更改图表属性
    CHARTEVENT_CUSTOM,    //事件的首写字符在自定义事件中
    CHARTEVENT_CUSTOM_LAST,    //事件的最后一个字符在自定义事件中
};

//当ChartEvent事件发生时在指标和EA中调用这个函数。这个函数意在处理由用户或者MQL5程序所做的图表更改。
void  OnChartEvent(
   const ENUM_CHART_EVENT       id,       // 事件ID  
   const long&     lparam,   // 长整型(long)事件参数 
   const double&   dparam,   // 长整型(double)事件参数 
   const string&   sparam    // 字符串型(string)事件参数 
   );