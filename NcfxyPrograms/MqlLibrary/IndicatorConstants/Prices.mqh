#include "../RootInclude.mqh"

// https://www.mql5.com/zh/docs/constants/indicatorconstants/prices

enum ENUM_APPLIED_PRICE{
    PRICE_CLOSE,    //收盘价格
    PRICE_OPEN,    //开盘价格
    PRICE_HIGH,    //一个时期的最高价格
    PRICE_LOW,    //一个时期的最低价格
    PRICE_MEDIAN,    //中间值（高+低）/2
    PRICE_TYPICAL,    //典型价格（高+低+收盘价）/3
    PRICE_WEIGHTED,    //平均价格（高+低+收盘价格+开盘价格）/4
};

enum ENUM_APPLIED_VOLUME{
    VOLUME_TICK,    //赊欠成交量
    VOLUME_REAL,    //交易成交量
};

enum ENUM_STO_PRICE{
    STO_LOWHIGH,    //基于最低价/最高价的计算
    STO_CLOSECLOSE,    //基于开盘价/收盘价的计算
};