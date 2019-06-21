#include "../RootInclude.mqh"

// https://www.mql5.com/zh/docs/constants/environment_state/accountinformation

enum ENUM_ACCOUNT_INFO_INTEGER
{
    ACCOUNT_LOGIN,          //账户数量	long
    ACCOUNT_TRADE_MODE,     //账户交易方式	ENUM_ACCOUNT_TRADE_MODE
    ACCOUNT_LEVERAGE,       //账户杠杆	long
    ACCOUNT_LIMIT_ORDERS,   //活跃待办订单最大允许量	int
    ACCOUNT_MARGIN_SO_MODE, //建立最少使用保证金方式	ENUM_ACCOUNT_STOPOUT_MODE
    ACCOUNT_TRADE_ALLOWED,  //允许活期账户交易	bool
    ACCOUNT_TRADE_EXPERT,   //允许EA交易	bool
    ACCOUNT_MARGIN_MODE,    //预付款计算模式	ENUM_ACCOUNT_MARGIN_MODE
    ACCOUNT_CURRENCY_DIGITS //账户货币的小数位数，这是正确展示交易结果所必需的	int
};

enum ENUM_ACCOUNT_INFO_DOUBLE
{
    ACCOUNT_BALANCE,            //存入货币时账户结余	double
    ACCOUNT_CREDIT,             //存入货币时账户亏空	double
    ACCOUNT_PROFIT,             //存入货币时账户当前利润	double
    ACCOUNT_EQUITY,             //存入货币时账户权益	double
    ACCOUNT_MARGIN,             //存入货币时账户保证金使用	double
    ACCOUNT_MARGIN_FREE,        //存入货币时账户可用保证金	double
    ACCOUNT_MARGIN_LEVEL,       //账户保证金水平仪百分比形式制定	double
    ACCOUNT_MARGIN_SO_CALL,     //保证金调用水平，依据建立的ACCOUNT_MARGIN_SO_MODE，以百分比形式或存入货币时期表示	double
    ACCOUNT_MARGIN_SO_SO,       //保证金停用水平，依据建立的ACCOUNT_MARGIN_SO_MODE，以百分比形式或存入货币时期表示	double
    ACCOUNT_MARGIN_INITIAL,     //初始预付款。账户上保留的金额需要涵盖所有挂单的预付款	double
    ACCOUNT_MARGIN_MAINTENANCE, //维持预付款。账户上保留的最小净值需要涵盖所有持仓的最小金额	double
    ACCOUNT_ASSETS,             //账户的活动资本	double
    ACCOUNT_LIABILITIES,        //账户的流动负债	double
    ACCOUNT_COMMISSION_BLOCKED  //账户的当前锁定手续费金额	double
};

enum ENUM_ACCOUNT_INFO_STRING {
    ACCOUNT_NAME,    //用户名	string
    ACCOUNT_SERVER,    //交易服务器名称	string
    ACCOUNT_CURRENCY,    //账户货币	string
    ACCOUNT_COMPANY,    //提供账户的公司名称	string
};

enum ENUM_ACCOUNT_TRADE_MODE{
    ACCOUNT_TRADE_MODE_DEMO,    //样本账户
    ACCOUNT_TRADE_MODE_CONTEST,    //竞争账户
    ACCOUNT_TRADE_MODE_REAL,    //真实账户

};

enum ENUM_ACCOUNT_STOPOUT_MODE{
    ACCOUNT_STOPOUT_MODE_PERCENT,    //账户以半分比方式截止
    ACCOUNT_STOPOUT_MODE_MONEY,    //账户以货币方式截止

};

enum ENUM_ACCOUNT_MARGIN_MODE{
    ACCOUNT_MARGIN_MODE_RETAIL_NETTING,    //用于场外交易市场“单边持仓”模式下的持仓说明 (一个交易品种只存在一个持仓）。预付款计算基于交易品种的类型 (SYMBOL_TRADE_CALC_MODE)。
    ACCOUNT_MARGIN_MODE_EXCHANGE,    //用于交易所市场。预付款计算基于交易品种设置中指定的折扣。折扣由交易商设定，但不能低于交易所设定的值。
    ACCOUNT_MARGIN_MODE_RETAIL_HEDGING,    //用于交易所市场，在这里个体持仓成为可能（锁仓，一个交易品种可以存在多个持仓）。预付款计算基于考虑锁仓预付款 (SYMBOL_MARGIN_HEDGED)的交易品种类型(SYMBOL_TRADE_CALC_MODE) 。
};
