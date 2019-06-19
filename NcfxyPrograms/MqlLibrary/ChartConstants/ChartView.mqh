#include "../RootInclude.mqh"

// https://www.mql5.com/zh/docs/constants/chartconstants/chart_view

enum ENUM_CHART_MODE{
    CHART_BARS,    //以序列字符陈列
    CHART_CANDLES,    //以日语蜡烛台陈列
    CHART_LINE,    //收盘价格线型显示
};

enum ENUM_CHART_VOLUME_MODE{
    CHART_VOLUME_HIDE,    //成交量隐藏
    CHART_VOLUME_TICK,    //最小价格成交量
    CHART_VOLUME_REAL,    //交易成交量
};