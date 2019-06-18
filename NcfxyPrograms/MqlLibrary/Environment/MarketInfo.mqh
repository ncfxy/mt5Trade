#include "../RootInclude.mqh"

enum ENUM_SYMBOL_INFO_INTEGER{

    SYMBOL_CUSTOM,    //这是一个自定义交易品种 – 该交易品种是基于来自市场报价和/或外部数据源的另一个交易品种而综合创建的	bool
    SYMBOL_BACKGROUND_COLOR,    //市场报价中的交易品种所使用的背景色	color
    SYMBOL_CHART_MODE,    //生成交易品种柱形图所使用的价格类型，例如卖价或最后价	ENUM_SYMBOL_CHART_MODE
    SYMBOL_EXIST,    //同名交易品种已存在	bool
    SYMBOL_SELECT,    //在市场报价中选择交易品种	bool
    SYMBOL_VISIBLE,    //交易品种在市场报价中可见。一些交易品种（主要是计算入金货币预付款要求或利润所需的交叉率）被自动选择，但通常在市场报价中不可见。若要显示这些交易品种，就需要选择显式显示。	
    SYMBOL_SESSION_DEALS,    //当前时期的交易数量	long
    SYMBOL_SESSION_BUY_ORDERS,    //当时的买入订单数量	long
    SYMBOL_SESSION_SELL_ORDERS,    //当时的卖出订单数量	long
    SYMBOL_VOLUME,    //最后订单成交量	long
    SYMBOL_VOLUMEHIGH,    //当天最大订单	long
    SYMBOL_VOLUMELOW,    //当天最小订单	long
    SYMBOL_TIME,    //最后报价时间	datetime
    SYMBOL_DIGITS,    //小数点后数字	int
    SYMBOL_SPREAD_FLOAT,    //浮点传播迹象	bool
    SYMBOL_SPREAD,    //相关传播值	int
    SYMBOL_TICKS_BOOKDEPTH,    //显示在市场深度要求中的最大数量，交易品种无队列要求，值是0	int
    SYMBOL_TRADE_CALC_MODE,    //合约价格计算方式	ENUM_SYMBOL_CALC_MODE
    SYMBOL_TRADE_MODE,    //订单执行类型	ENUM_SYMBOL_TRADE_MODE
    SYMBOL_START_TIME,    //交易品种交易开始日期（通常用于期货）	datetime
    SYMBOL_EXPIRATION_TIME,    //交易品种交易结束日期（通常用于期货）	datetime
    SYMBOL_TRADE_STOPS_LEVEL,    //止蚀盘当前收盘价格的最小空间	int
    SYMBOL_TRADE_FREEZE_LEVEL,    //凝结交易操作的距离	int
    SYMBOL_TRADE_EXEMODE,    //订单执行方式	ENUM_SYMBOL_TRADE_EXECUTION
    SYMBOL_SWAP_MODE,    //交易计算模式	ENUM_SYMBOL_SWAP_MODE
    SYMBOL_SWAP_ROLLOVER3DAYS,    //日翻滚收费	ENUM_DAY_OF_WEEK
    SYMBOL_MARGIN_HEDGED_USE_LEG,    //计算锁仓预付款只收取单边交易手数大的（买入或卖出）	bool
    SYMBOL_EXPIRATION_MODE,    //到期模式 允许命令标志	int
    SYMBOL_FILLING_MODE,    //填充模式 允许命令标志	int
    SYMBOL_ORDER_MODE,    //允许的标识 订单类型	int
    SYMBOL_ORDER_GTC_MODE,    //止损和盈利订单到期模式，如果SYMBOL_EXPIRATION_MODE=SYMBOL_EXPIRATION_GTC（有效直至被取消）	ENUM_SYMBOL_ORDER_GTC_MODE
    SYMBOL_OPTION_MODE,    //期权类型	ENUM_SYMBOL_OPTION_MODE
    SYMBOL_OPTION_RIGHT,    //期权权限(看涨/看跌)	ENUM_SYMBOL_OPTION_RIGHT

};