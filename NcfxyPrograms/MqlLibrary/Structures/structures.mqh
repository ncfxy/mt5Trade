#include "../RootInclude.mqh"
#include "../IndicatorConstants/DataType.mqh"
#include "../TradingConstants/BookType.mqh"
#include "../TradingConstants/TradeRequestActions.mqh"
#include "../TradingConstants/OrderProperties.mqh"
#include "../TradingConstants/TradeTransectionType.mqh"
#include "../TradingConstants/DealProperties.mqh"

// https://www.mql5.com/zh/docs/constants/structures


// just to fix error
struct datetime
{
};

// https://www.mql5.com/zh/docs/constants/structures/mqldatetime
// Mql日期时间
// 数据类型结构包括int的8个字段 ：
struct MqlDateTime
{
    int year;        // 年
    int mon;         // 月
    int day;         // 天
    int hour;        // 小时
    int min;         // 分钟
    int sec;         // 秒
    int day_of_week; // 一周中的每天 (0-周日, 1-周一, ... ,6-周六)
    int day_of_year; // 一年中的日期号(1月1日 赋予零值)
};

// https://www.mql5.com/zh/docs/constants/structures/mqlparam
// 指标输入参量的结构 (MqlParam)
// 当使用 IndicatorCreate() 函数增加技术指标 处理时， MqlParam参数结构被提供 输入参量 特殊设计。
struct MqlParam
{
    ENUM_DATATYPE type;  // 输入参量类型,  ENUM_DATATYPE 值
    long integer_value;  // 存储整数类型域
    double double_value; // 存储双精度类型域
    string string_value; // 存储字符串类型域
};

// https://www.mql5.com/zh/docs/constants/structures/mqlrates
// Mql比率
// 结构存储有关价位、交易量和传递的信息。
struct MqlRates
{
    datetime time;    // 周期开始时间
    double open;      // 开盘价
    double high;      // 周期最高价
    double low;       // 周期最低价
    double close;     // 收盘价
    long tick_volume; // 订单交易量
    int spread;       // 点差
    long real_volume; // 交易量
};

// https://www.mql5.com/zh/docs/constants/structures/mqlbookinfo
// MqlBookInfo
// 提供市场深度信息。
struct MqlBookInfo
{
    ENUM_BOOK_TYPE type; // 从 ENUM_BOOK_TYPE 列举出的订单类型
    double price;        // 价格
    long volume;         // 交易量
    double volume_real;  // 精确度更高的交易量
};

// https://www.mql5.com/zh/docs/constants/structures/mqltraderequest
// 交易请求结构 (MqlTradeRequest)
// 客户端与交易服务器执行其他安置操作相互作用，通过使用交易请求来执行。
// 交易请求由特殊预定MqlTradeRequest类型的结构来体现，包含必要的执行交易订单。
// 该请求执行结果由MqlTradeResult的类型结构来表示。
struct MqlTradeRequest
{
    ENUM_TRADE_REQUEST_ACTIONS action;    // 交易操作类型
    long magic;                           // EA交易 ID (幻数)
    long order;                           // 订单号
    string symbol;                        // 交易的交易品种
    double volume;                        // 一手需求的交易量
    double price;                         // 价格
    double stoplimit;                     // 订单止损限价点位
    double sl;                            // 订单止损价位点位
    double tp;                            // 订单盈利价位点位
    long deviation;                       // 需求价格最可能的偏差
    ENUM_ORDER_TYPE type;                 // 订单类型
    ENUM_ORDER_TYPE_FILLING type_filling; // 订单执行类型
    ENUM_ORDER_TYPE_TIME type_time;       // 订单执行时间
    datetime expiration;                  // 订单终止期 (为 ORDER_TIME_SPECIFIED 类型订单)
    string comment;                       // 订单注释
    long position;                        // 持仓编号
    long position_by;                     // 反向持仓编号
};

// https://www.mql5.com/zh/docs/constants/structures/mqltradecheckresult
//   交易要求检查结构结果（MqlTradeCheckResult）
// 在向服务器发送 交易操作 要求时，推荐检测。该检测使用 OrderCheck()函数执行，检测要求和MqlTradeCheckResult结构变量类型已通过传递，检测结果会记录该变量。

struct MqlTradeCheckResult
{
    int retcode;         // 应答码
    double balance;      // 交易执行后的余额
    double equity;       // 交易执行后的净值
    double profit;       // 浮动利润
    double margin;       // 保证金规定额
    double margin_free;  // 自由保证金
    double margin_level; // 保证金比例
    string comment;      // 应答码注释 (描述错误)
};

// https://www.mql5.com/zh/docs/constants/structures/mqltraderesult
// 交易请求结果结构 （MqlTradeResult）
// 交易请求结果，交易服务器返回有关交易要求处理结果的相关数据来作为类型的MqlTradeResult 特殊预定义结构。

struct MqlTradeResult
{
    int retcode;          // 操作返回代码
    long deal;            // 交易订单号，如果完成的话
    long order;           // 订单号，如果下订单的话
    double volume;        // 交易交易量，经纪人确认的
    double price;         // 交易价格，经纪人确认的
    double bid;           // 当前买入价
    double ask;           // 当前卖出价
    string comment;       // 经纪人操作注释 (默认填充操作描述)
    int request_id;       // 分派期间通过程序端设置Request ID
    int retcode_external; // 返回外部交易系统代码
};

// https://www.mql5.com/zh/docs/constants/structures/mqltradetransaction
// 交易事务结构 (MqlTradeTransaction)
struct MqlTradeTransaction
{
    long deal;                        // 交易单
    long order;                       // 订单标签
    string symbol;                    // 交易品种
    ENUM_TRADE_TRANSACTION_TYPE type; // 交易事务类型
    ENUM_ORDER_TYPE order_type;       // 订单类型
    ENUM_ORDER_STATE order_state;     // 订单状态
    ENUM_DEAL_TYPE deal_type;         // 成交类型
    ENUM_ORDER_TYPE_TIME time_type;   // 操作期的订单类型
    datetime time_expiration;         // 订单到期时间
    double price;                     // 价格
    double price_trigger;             // 限价止损订单激活价格
    double price_sl;                  // 止损水平
    double price_tp;                  // 获利水平
    double volume;                    // 交易量手数
    long position;                    // 持仓价格
    long position_by;                 // 反向持仓价格
};

// 返回当前价格结构 (MqlTick)
// 该构造是存储交易类型的最新价位，它能最快检索有关当前价格的最需要信息。

struct MqlTick
{
    datetime time;      // 价格更新的最近时间
    double bid;         // 当前卖价
    double ask;         // 当前买价
    double last;        // 最后交易的价格(Last)
    long volume;        // 当前最后价格的交易量
    long time_msc;      // 价格最后一次更新的时间，以毫秒计算
    int flags;          // 报价标识
    double volume_real; // 精确度更高的当前最后价格的交易量
};