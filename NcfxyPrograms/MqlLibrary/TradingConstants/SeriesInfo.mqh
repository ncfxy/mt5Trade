#include "../RootInclude.mqh"

// https://www.mql5.com/zh/docs/constants/tradingconstants/enum_series_info_integer

enum ENUM_SERIES_INFO_INTEGER{
    SERIES_BARS_COUNT,    //当前时刻交易品种周期字节价值    long
    SERIES_FIRSTDATE,    //当前时刻交易品种周期第一数据    datetime
    SERIES_LASTBAR_DATE,    //交易品种周期最后字节的开仓时间    datetime
    SERIES_SERVER_FIRSTDATE,    //忽略时间表的服务器上交易品种历史中第一个日期    datetime
    SERIES_TERMINAL_FIRSTDATE,    //忽略时间表的客户端上交易品种历史中第一个日期    datetime
    SERIES_SYNCHRONIZED,    //当前时刻交易品种/周期的同步数据    bool
};
