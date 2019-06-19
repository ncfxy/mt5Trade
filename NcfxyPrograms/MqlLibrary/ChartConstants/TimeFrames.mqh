#include "../RootInclude.mqh"

// https://www.mql5.com/zh/docs/constants/chartconstants/enum_timeframes

enum ENUM_TIMEFRAMES
{
    PERIOD_CURRENT, //当前时间表
    PERIOD_M1,      //1 分钟
    PERIOD_M2,      //2 分钟
    PERIOD_M3,      //3 分钟
    PERIOD_M4,      //4 分钟
    PERIOD_M5,      //5 分钟
    PERIOD_M6,      //6 分钟
    PERIOD_M10,     //10 分钟
    PERIOD_M12,     //12 分钟
    PERIOD_M15,     //15 分钟
    PERIOD_M20,     //20 分钟
    PERIOD_M30,     //30 分钟
    PERIOD_H1,      //1小时
    PERIOD_H2,      //2 小时
    PERIOD_H3,      //3 小时
    PERIOD_H4,      //4 小时
    PERIOD_H6,      //6小时
    PERIOD_H8,      //8小时
    PERIOD_H12,     //12 小时
    PERIOD_D1,      //1 天
    PERIOD_W1,      //1 周
    PERIOD_MN1,     //1月
};

enum ENUM_SERIESMODE{
    MODE_OPEN,    //开盘价
    MODE_LOW,    //最低价
    MODE_HIGH,    //最高价
    MODE_CLOSE,    //收盘价
    MODE_VOLUME,    //报价量
    MODE_REAL_VOLUME,    //真实交易量
    MODE_SPREAD,    //点差
};