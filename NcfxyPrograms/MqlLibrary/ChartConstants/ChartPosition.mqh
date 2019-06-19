#include "../RootInclude.mqh"

// https://www.mql5.com/zh/docs/constants/chartconstants/enum_chart_position

enum ENUM_CHART_POSITION{
    CHART_BEGIN,    //图表开始（最原始价位）
    CHART_CURRENT_POS,    //当前位置
    CHART_END,    //图表末尾（当前价格）
};