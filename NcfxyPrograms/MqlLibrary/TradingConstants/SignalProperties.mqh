#include "../RootInclude.mqh"

// https://www.mql5.com/zh/docs/constants/tradingconstants/signalproperties

enum ENUM_SIGNAL_BASE_DOUBLE{
    SIGNAL_BASE_BALANCE,    //账户结余
    SIGNAL_BASE_EQUITY,    //账户净值
    SIGNAL_BASE_GAIN,    //账户所得
    SIGNAL_BASE_MAX_DRAWDOWN,    //账户最大跌幅
    SIGNAL_BASE_PRICE,    //信号订阅价格
    SIGNAL_BASE_ROI,    //投资利润率(%)
};

enum ENUM_SIGNAL_BASE_INTEGER{
    SIGNAL_BASE_DATE_PUBLISHED,    //发布日期 (提供订阅的日期)
    SIGNAL_BASE_DATE_STARTED,    //监控起始日期
    SIGNAL_BASE_DATE_UPDATED,    //信号交易统计的最近更新日期
    SIGNAL_BASE_ID,    //信号 ID
    SIGNAL_BASE_LEVERAGE,    //账户杠杆
    SIGNAL_BASE_PIPS,    //利润点
    SIGNAL_BASE_RATING,    //持仓评级
    SIGNAL_BASE_SUBSCRIBERS,    //订阅人数量
    SIGNAL_BASE_TRADES,    //交易数量
    SIGNAL_BASE_TRADE_MODE,    //账户类型 (0-真实， 1-模拟， 2-竞赛)
};

enum ENUM_SIGNAL_BASE_STRING{
    SIGNAL_BASE_AUTHOR_LOGIN,    //作者登录
    SIGNAL_BASE_BROKER,    //交易商名称（公司名）
    SIGNAL_BASE_BROKER_SERVER,    //交易商服务器
    SIGNAL_BASE_NAME,    //信号名称
    SIGNAL_BASE_CURRENCY,    //信号基础货币
};

enum ENUM_SIGNAL_INFO_DOUBLE{
    SIGNAL_INFO_EQUITY_LIMIT,    //净值限制
    SIGNAL_INFO_SLIPPAGE,    //滑移(用于下市价单时同步持仓和复制交易)
    SIGNAL_INFO_VOLUME_PERCENT,    //最大的使用入金百分比(%), r/o
};

enum ENUM_SIGNAL_INFO_INTEGER{
    SIGNAL_INFO_CONFIRMATIONS_DISABLED,    //确认禁用标识
    SIGNAL_INFO_COPY_SLTP,    //复制止损和获利标识
    SIGNAL_INFO_DEPOSIT_PERCENT,    //入金比例 (%)
    SIGNAL_INFO_ID,    //信号 id, r/o
    SIGNAL_INFO_SUBSCRIPTION_ENABLED,    //订阅启用标识
    SIGNAL_INFO_TERMS_AGREE,    //"同意信号服务使用条款" 标识, r/o
};

enum ENUM_SIGNAL_INFO_STRING{
    SIGNAL_INFO_NAME,    //信号名称，r/o
};
