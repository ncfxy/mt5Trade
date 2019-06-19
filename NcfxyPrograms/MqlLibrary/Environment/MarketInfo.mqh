#include "../RootInclude.mqh"

// https://www.mql5.com/zh/docs/constants/environment_state/marketinfoconstants

enum ENUM_SYMBOL_INFO_INTEGER
{
    SYMBOL_CUSTOM,                //这是一个自定义交易品种 – 该交易品种是基于来自市场报价和/或外部数据源的另一个交易品种而综合创建的	bool
    SYMBOL_BACKGROUND_COLOR,      //市场报价中的交易品种所使用的背景色	color
    SYMBOL_CHART_MODE,            //生成交易品种柱形图所使用的价格类型，例如卖价或最后价	ENUM_SYMBOL_CHART_MODE
    SYMBOL_EXIST,                 //同名交易品种已存在	bool
    SYMBOL_SELECT,                //在市场报价中选择交易品种	bool
    SYMBOL_VISIBLE,               //交易品种在市场报价中可见。一些交易品种（主要是计算入金货币预付款要求或利润所需的交叉率）被自动选择，但通常在市场报价中不可见。若要显示这些交易品种，就需要选择显式显示。
    SYMBOL_SESSION_DEALS,         //当前时期的交易数量	long
    SYMBOL_SESSION_BUY_ORDERS,    //当时的买入订单数量	long
    SYMBOL_SESSION_SELL_ORDERS,   //当时的卖出订单数量	long
    SYMBOL_VOLUME,                //最后订单成交量	long
    SYMBOL_VOLUMEHIGH,            //当天最大订单	long
    SYMBOL_VOLUMELOW,             //当天最小订单	long
    SYMBOL_TIME,                  //最后报价时间	datetime
    SYMBOL_DIGITS,                //小数点后数字	int
    SYMBOL_SPREAD_FLOAT,          //浮点传播迹象	bool
    SYMBOL_SPREAD,                //相关传播值	int
    SYMBOL_TICKS_BOOKDEPTH,       //显示在市场深度要求中的最大数量，交易品种无队列要求，值是0	int
    SYMBOL_TRADE_CALC_MODE,       //合约价格计算方式	ENUM_SYMBOL_CALC_MODE
    SYMBOL_TRADE_MODE,            //订单执行类型	ENUM_SYMBOL_TRADE_MODE
    SYMBOL_START_TIME,            //交易品种交易开始日期（通常用于期货）	datetime
    SYMBOL_EXPIRATION_TIME,       //交易品种交易结束日期（通常用于期货）	datetime
    SYMBOL_TRADE_STOPS_LEVEL,     //止蚀盘当前收盘价格的最小空间	int
    SYMBOL_TRADE_FREEZE_LEVEL,    //凝结交易操作的距离	int
    SYMBOL_TRADE_EXEMODE,         //订单执行方式	ENUM_SYMBOL_TRADE_EXECUTION
    SYMBOL_SWAP_MODE,             //交易计算模式	ENUM_SYMBOL_SWAP_MODE
    SYMBOL_SWAP_ROLLOVER3DAYS,    //日翻滚收费	ENUM_DAY_OF_WEEK
    SYMBOL_MARGIN_HEDGED_USE_LEG, //计算锁仓预付款只收取单边交易手数大的（买入或卖出）	bool
    SYMBOL_EXPIRATION_MODE,       //到期模式 允许命令标志	int
    SYMBOL_FILLING_MODE,          //填充模式 允许命令标志	int
    SYMBOL_ORDER_MODE,            //允许的标识 订单类型	int
    SYMBOL_ORDER_GTC_MODE,        //止损和盈利订单到期模式，如果SYMBOL_EXPIRATION_MODE=SYMBOL_EXPIRATION_GTC（有效直至被取消）	ENUM_SYMBOL_ORDER_GTC_MODE
    SYMBOL_OPTION_MODE,           //期权类型	ENUM_SYMBOL_OPTION_MODE
    SYMBOL_OPTION_RIGHT,          //期权权限(看涨/看跌)	ENUM_SYMBOL_OPTION_RIGHT

};

enum ENUM_SYMBOL_INFO_DOUBLE
{
    SYMBOL_BID,                        //买价―最佳卖出信息    双精度
    SYMBOL_BIDHIGH,                    //一天中最高买价    双精度
    SYMBOL_BIDLOW,                     //一天中最低买价    双精度
    SYMBOL_ASK,                        //卖价―最佳买入信息    双精度
    SYMBOL_ASKHIGH,                    //一天中最高买价    双精度
    SYMBOL_ASKLOW,                     //一天中最低买价    双精度
    SYMBOL_LAST,                       //最后订单价格    双精度
    SYMBOL_LASTHIGH,                   //一天中最高    双精度
    SYMBOL_LASTLOW,                    //一天中最低    双精度
    SYMBOL_VOLUME_REAL,                //最后订单成交量    双精度
    SYMBOL_VOLUMEHIGH_REAL,            //当天最大订单    双精度
    SYMBOL_VOLUMELOW_REAL,             //当天最小订单    双精度
    SYMBOL_OPTION_STRIKE,              //期权的执行价。期权买家可以购买（看涨期权）或出售（看跌期权）基础资产的价格，期权卖家有义务出售或购买基础资产的适当数量。    双精度
    SYMBOL_POINT,                      //交易品种点值    双精度
    SYMBOL_TRADE_TICK_VALUE,           //SYMBOL_TRADE_TICK_VALUE_PROFIT的值    双精度
    SYMBOL_TRADE_TICK_VALUE_PROFIT,    //为盈利持仓计算报价    双精度
    SYMBOL_TRADE_TICK_VALUE_LOSS,      //为亏损持仓计算报价    双精度
    SYMBOL_TRADE_TICK_SIZE,            //最小价格改变    双精度
    SYMBOL_TRADE_CONTRACT_SIZE,        //交易合约大小    双精度
    SYMBOL_TRADE_ACCRUED_INTEREST,     //应计利息– 累积的票面利率，例如，部分票面利率是按照付息债权发行的天数或最后一次支付票面利率的天数来计算的    双精度
    SYMBOL_TRADE_FACE_VALUE,           //票面价值 – 发行人设置的初始债券价值    双精度
    SYMBOL_TRADE_LIQUIDITY_RATE,       //流动性利率是可用于预付款的资产份额。    双精度
    SYMBOL_VOLUME_MIN,                 //一笔订单中的最小成交量    双精度
    SYMBOL_VOLUME_MAX,                 //一笔订单中的最大成交量    双精度
    SYMBOL_VOLUME_STEP,                //交易执行的最小成交量更改步骤    双精度
    SYMBOL_VOLUME_LIMIT,               //交易品种单向（单买或单卖）持仓和挂单可允许的最大总容量。例如，5手限定范围内，您可以拥有5手买入持仓交易量和下单5手卖出限价挂单交易量。但是在这种情况下，你不能下单买入限价挂单（因为单向总交易量将会超出限定范围）或下单超过5手的卖出限价交易量。    双精度
    SYMBOL_SWAP_LONG,                  //买入库存费值    双精度
    SYMBOL_SWAP_SHORT,                 //卖出库存费值    双精度
    SYMBOL_MARGIN_INITIAL,             //原始预付款表示每一笔预付款开仓成交量的数量    双精度
    SYMBOL_MARGIN_MAINTENANCE,         //维持预付款，在交易品种中建立预付款数量，从一笔订单中获得预付款盈利，当客户账户改变时，使用客户资产检测系统，如果维持预付款等于，使用原始预付款    双精度
    SYMBOL_SESSION_VOLUME,             //当前交易的总交易量    双精度
    SYMBOL_SESSION_TURNOVER,           //当前的总流通量    双精度
    SYMBOL_SESSION_INTEREST,           //总持仓利息    双精度
    SYMBOL_SESSION_BUY_ORDERS_VOLUME,  //买入订单的当前交易量    双精度
    SYMBOL_SESSION_SELL_ORDERS_VOLUME, //卖出订单的当前交易量    双精度
    SYMBOL_SESSION_OPEN,               //当前持仓价格    双精度
    SYMBOL_SESSION_CLOSE,              //当前平仓价格    双精度
    SYMBOL_SESSION_AW,                 //当前加权平均价格    双精度
    SYMBOL_SESSION_PRICE_SETTLEMENT,   //当前结算价格    双精度
    SYMBOL_SESSION_PRICE_LIMIT_MIN,    //当前最低价格    双精度
    SYMBOL_SESSION_PRICE_LIMIT_MAX,    //当前最高价格    双精度
    SYMBOL_MARGIN_HEDGED,              //锁仓持仓每手的合约大小或预付款值（一个交易品种的反向持仓）。锁仓持仓可以使用两种预付款计算方式。计算方式由交易商定义。
                                       // 基本计算：
                                       // 如果一个交易品种指定初始预付款(SYMBOL_MARGIN_INITIAL) ，锁仓预付款被指定为一个绝对值（以货币计算）。
                                       // 如果没有指定初始预付款（等于0），SYMBOL_MARGIN_HEDGED 则等于合约大小，这将用来通过恰当公式根据金融工具类型计算预付款(SYMBOL_TRADE_CALC_MODE)。
                                       // 计算最大持仓：
                                       // SYMBOL_MARGIN_HEDGED 值不被考虑。
                                       // 计算交易品种所有卖出和买入持仓的交易量。
                                       // 对于每个方向，都会计算加权平均开盘价和入金货币的加权平均转化率。
                                       // 下一步，使用根据交易品种类型选定的适当公式(SYMBOL_TRADE_CALC_MODE) 计算卖出和买入持仓预付款。
                                       // 最大值用作预付款。

};

enum ENUM_SYMBOL_INFO_STRING
{
    SYMBOL_BASIS,           //基础衍生资产    string
    SYMBOL_CURRENCY_BASE,   //交易品种基础货币    string
    SYMBOL_CURRENCY_PROFIT, //利润货币    string
    SYMBOL_CURRENCY_MARGIN, //预付款货币    string
    SYMBOL_BANK,            //当前报价支线    string
    SYMBOL_DESCRIPTION,     //交易品种描述    string
    SYMBOL_FORMULA,         //用于自定义交易品种定价的公式    string
    SYMBOL_ISIN,            //ISIN系统中交易品种的名称（国际证券识别号码）。国际证券识别号码是一个12位数字字母代码，是证券的唯一识别码。交易品种的属性是由交易服务器方面决定的 。    string
    SYMBOL_PAGE,            //包含交易品种信息的网页地址。这个地址将显示为一个链接，用于在程序端中查看交易品种的属性    string
    SYMBOL_PATH,            //交易品种树形通路    string
};

//快速返回规定值。
double SymbolInfoDouble(
    string name,                    // 交易品种
    ENUM_SYMBOL_INFO_DOUBLE prop_id // 属性标识符
);

//返回真值或失败值取决于函数操作是否成功，如果成功，属性值通过引用从最后的参量传递到接受变量中。
bool SymbolInfoDouble(
    string name,                     // 交易品种
    ENUM_SYMBOL_INFO_DOUBLE prop_id, // 属性标识符
    double &double_var               // 这里假设属性值
);

//立即返回属性值
string SymbolInfoString(
    string name,                    // 交易品种
    ENUM_SYMBOL_INFO_STRING prop_id // 属性标识符
);

//返回true或者false，由该函数运行成功与否来决定，如果成功，在培育变量通过引用传递到最后常量中函数属性固定。
bool SymbolInfoString(
    string name,                     // 交易品种
    ENUM_SYMBOL_INFO_STRING prop_id, // 属性标识符
    string &string_var               // 这里假设属性值
);

enum ENUM_SYMBOL_CHART_MODE
{
    SYMBOL_CHART_MODE_BID,  //柱形图以卖价为基础
    SYMBOL_CHART_MODE_LAST, //柱形图以最后价为基础
};

enum SYMBOL_EXPIRATION_SPECIFIED
{
    SYMBOL_EXPIRATION_GTC,           //1    该订单永久有效，直到它被明确取消
    SYMBOL_EXPIRATION_DAY,           //2    订单在交易日当天有效
    SYMBOL_EXPIRATION_SPECIFIED,     //4    订单中指定的到期时间
    SYMBOL_EXPIRATION_SPECIFIED_DAY, //8    订单中指定的到期日期
};

enum ENUM_SYMBOL_ORDER_GTC_MODE{
    SYMBOL_ORDERS_GTC,    //挂单和止损/止盈水平永久有效，直至被明确取消
    SYMBOL_ORDERS_DAILY,    //订单在一个交易日内有效。交易日结束，删除所有止损和止盈水平以及挂单。
    SYMBOL_ORDERS_DAILY_EXCLUDING_STOPS,    //交易日变化时，只删除挂单，保留止损和止盈水平。
};

enum SYMBOL_ORDER_MODE{
    SYMBOL_ORDER_MARKET,    //1    允许市价单（买入和卖出）
    SYMBOL_ORDER_LIMIT,    //2    允许限价单（买入限价和卖出限价）
    SYMBOL_ORDER_STOP,    //4    允许止损订单（买入止损和卖出止损）
    SYMBOL_ORDER_STOP_LIMIT,    //8    允许止损限价订单（买入止损限价和卖出止损限价）
    SYMBOL_ORDER_SL,    //16/    允许止损
    SYMBOL_ORDER_TP,    //32    允许获利
    SYMBOL_ORDER_CLOSEBY,    //64    Close By 操作权限，例如，通过相同工具但方向相反的另一个持仓来平仓。该属性是为锁仓账户系统的账户而设置(ACCOUNT_MARGIN_MODE_RETAIL_HEDGING)
};

enum ENUM_SYMBOL_CALC_MODE{
    SYMBOL_CALC_MODE_FOREX,    //外汇模式―计算盈利和预付款    
                            //预付款： Lots * Contract_Size / Leverage  Contract_Size / Leverage * Margin_Rate
                            //利润： (close_price - open_price) * Contract_Size * Lots
    SYMBOL_CALC_MODE_FOREX_NO_LEVERAGE,    //外汇无杠杆模式 ― 不考虑杠杆作用的情况下来计算外汇交易品种的利润和预付款    
                                            //预付款：Lots * Contract_Size * Margin_Rate
                                            //利润：(close_price - open_price) * Contract_Size * Lots
    SYMBOL_CALC_MODE_FUTURES,    //期货模式―计算预付款和盈利    
                                //预付款： Lots * InitialMargin * Margin_Rate
                                //利润： (close_price - open_price) * TickPrice / TickSize * Lots
    SYMBOL_CALC_MODE_CFD,    //CFD模式―计算预付款和盈利    
                                //预付款： Lots * ContractSize * MarketPrice * Margin_Rate
                                //盈利： (close_price - open_price) * Contract_Size * Lots
    SYMBOL_CALC_MODE_CFDINDEX,    //CFD指数模式―通过指数计算预付款和盈利    
                                //预付款： (Lots * ContractSize * MarketPrice) * TickPrice / TickSize * Margin_Rate
                                //盈利： (close_price - open_price) * Contract_Size * Lots
    SYMBOL_CALC_MODE_CFDLEVERAGE,    //CFD杠杆模式―通过杠杆贸易计算预付款和盈利    
                                //预付款：(Lots * ContractSize * MarketPrice) / Leverage * Margin_Rate
                                //盈利： (close_price - open_price) * Contract_Size * Lots
    SYMBOL_CALC_MODE_EXCH_STOCKS,    //交换模式 – 计算股票交易中，交易证券的预付款和赢利    
                                //预付款：Lots * ContractSize * LastPrice * Margin_Rate
                                //盈利：(close_price - open_price) * Contract_Size * Lots
    SYMBOL_CALC_MODE_EXCH_FUTURES,    //期货模式 –  计算股票交易中，交易期货合约的预付款和赢利    
                                //预付款：Lots * InitialMargin or Lots * MaintenanceMargin * Margin_Rate
                                //盈利： (close_price - open_price) * Lots*TickPrice / TickSize
    SYMBOL_CALC_MODE_EXCH_FUTURES_FORTS,    //期货期权模式 –  计算期权交易中，交易期货合约的预付款和赢利。根据以下规则，预付款可能会因MarginDiscount 偏差的数额而减少：
                                            // 1. 如果买入持仓的价格（买入订单）少于预估价格，MarginDiscount = Lots*((PriceSettle-PriceOrder)*TickPrice/TickSize)
                                            // 2. 如果卖出持仓的价格（卖出订单）超过预估价格，MarginDiscount = Lots*((PriceOrder-PriceSettle)*TickPrice/TickSize)
                                            // 在这里：

                                            // PriceSettle – 前一交易日的预估价格（清算）；PriceOrder – 订单（请求）中设置的加权平均持仓价格或持仓价格；TickPrice – 订单价（成本价格的点变化） TickSize – 订单大小（最低价格变化的步骤）    预付款：Lots * InitialMargin or Lots * MaintenanceMargin
                                            //  * Margin_Rate
                                            //  
                                            // 盈利： (close_price - open_price) * Lots * TickPrice / TickSize
    SYMBOL_CALC_MODE_EXCH_BONDS,    //交易所债券模式 – 为在股票交易所交易债券计算预付款和盈利    
                                    //预付款：Lots * ContractSize * FaceValue * open_price * /100
                                    //盈利：Lots * close_price * FaceValue * Contract_Size  + AccruedInterest * Lots * ContractSize
    SYMBOL_CALC_MODE_EXCH_STOCKS_MOEX,    //交易所股票模式(MOEX) – 为在MOEX交易证券计算预付款和盈利    
                                    //预付款：Lots * ContractSize * LastPrice * Margin_Rate
                                    //盈利：(close_price - open_price) * Contract_Size * Lots
    SYMBOL_CALC_MODE_EXCH_BONDS_MOEX,    //交易所债券模式(MOEX) – 为在MOEX交易债券计算预付款和盈利    
                                    //预付款：Lots * ContractSize * FaceValue * open_price * /100
                                    //盈利：Lots * close_price * FaceValue * Contract_Size  + AccruedInterest * Lots * ContractSize
    SYMBOL_CALC_MODE_SERV_COLLATERAL,    //担保模式 - 在交易账户中使用交易品种作为非交易资产。持仓的市值根据交易量，当前市价，合约大小和流动比率进行计算。价值包括在资产中，被加入到净值。这种交易品种的持仓提高了可用预付款的数额，并用作可交易工具持仓的额外预付款（担保）。    
                                        //预付款： no
                                        // 利润：  no
                                        //  
                                        // 市值：Lots*ContractSize * MarketPrice * LiqudityRate
};

enum ENUM_SYMBOL_TRADE_MODE{
    SYMBOL_TRADE_MODE_DISABLED,    //交易品种禁止交易
    SYMBOL_TRADE_MODE_LONGONLY,    //仅允许买入持仓
    SYMBOL_TRADE_MODE_SHORTONLY,    //仅允许卖出持仓
    SYMBOL_TRADE_MODE_CLOSEONLY,    //仅允许平仓操作
    SYMBOL_TRADE_MODE_FULL,    //没有交易限制
};

enum ENUM_SYMBOL_TRADE_EXECUTION{
    SYMBOL_TRADE_EXECUTION_REQUEST,    //请求执行
    SYMBOL_TRADE_EXECUTION_INSTANT,    //立即执行
    SYMBOL_TRADE_EXECUTION_MARKET,    //市价执行
    SYMBOL_TRADE_EXECUTION_EXCHANGE,    //交换执行
};  

enum ENUM_SYMBOL_SWAP_MODE{
    SYMBOL_SWAP_MODE_DISABLED,    //禁用利息（无利息）
    SYMBOL_SWAP_MODE_POINTS,    //以点数收取利息
    SYMBOL_SWAP_MODE_CURRENCY_SYMBOL,    //以交易品种基础货币的钱数收取利息
    SYMBOL_SWAP_MODE_CURRENCY_MARGIN,    //以交易品种预付款货币的钱数收取利息
    SYMBOL_SWAP_MODE_CURRENCY_DEPOSIT,    //以客户入金货币的钱数收取利息
    SYMBOL_SWAP_MODE_INTEREST_CURRENT,    //利息作为指定的年利息，从计算利息的工具价格收取（标准银行年是360天）
    SYMBOL_SWAP_MODE_INTEREST_OPEN,    //利息作为指定的年利息，从持仓的开盘价格收取 （标准银行年是360天）
    SYMBOL_SWAP_MODE_REOPEN_CURRENT,    //重新持仓收取利息。交易日结束，平仓。第二天以收盘价 +/- 指定点数 (参数 SYMBOL_SWAP_LONG 和SYMBOL_SWAP_SHORT)重新持仓
    SYMBOL_SWAP_MODE_REOPEN_BID,    //重新持仓收取利息。交易日结束，平仓。第二天以当前卖价 +/- 指定点数 (参数 SYMBOL_SWAP_LONG 和 SYMBOL_SWAP_SHORT)重新持仓
};

enum ENUM_DAY_OF_WEEK{
    SUNDAY,    //星期日
    MONDAY,    //星期一
    TUESDAY,    //星期二
    WEDNESDAY,    //星期三
    THURSDAY,    //星期四
    FRIDAY,    //星期五
    SATURDAY,    //星期六
};

enum ENUM_SYMBOL_OPTION_RIGHT{
    SYMBOL_OPTION_RIGHT_CALL,    //看涨期权就是提供给您在指定价格购买资产的权限
    SYMBOL_OPTION_RIGHT_PUT,    //看跌期权就是提供给您在特定价格出售资产的权限
};

enum ENUM_SYMBOL_OPTION_MODE{
    SYMBOL_OPTION_MODE_EUROPEAN,    //欧式期权可能只能在特定日期行使 (到期，执行日期，交付日期)
    SYMBOL_OPTION_MODE_AMERICAN,    //美式期权可以在任何交易日或到期之前行使。在指定周期买家可以行使期权
};
