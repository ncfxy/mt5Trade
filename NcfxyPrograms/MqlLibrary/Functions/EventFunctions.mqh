#include "../AllConstants.mqh"

// https://www.mql5.com/zh/docs/eventfunctions

// 函数显示到客户端，为这个EA或指标的timer 事件应当在间隔不到一秒钟就被触发.
bool EventSetMillisecondTimer(
    int milliseconds // 毫秒数
);

// 该函数应用于客户端，定时器事件必须依据EA交易依附的图表指定周期生成。
bool EventSetTimer(
    int seconds // 秒数
);

// 指定停止生成定时器事件的客户端。
void EventKillTimer();

// 该函数为指定图表生成自定义事件。
bool EventChartCustom(
    long chart_id,          // 接收图表事件的标识符
    ushort custom_event_id, // 事件标识符
    long lparam,            // 长整型参量
    double dparam,          // 双精度型参量
    string sparam           // 事件的字符串参量
);
