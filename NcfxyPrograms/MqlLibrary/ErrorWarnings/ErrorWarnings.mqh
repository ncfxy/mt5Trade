#include "../RootInclude.mqh"

// https://www.mql5.com/zh/docs/constants/errorswarnings

// 交易服务器返回代码
// 通过使用OrderSend()函数，所有执行交易操作的请求都以MqlTradeRequest交易请求结构发送。函数执行结果代替MqlTradeResult结构，retcode域包括交易服务器返回代码，所有代码都在ENUM_TRADE_RETURN_CODES项目中描述。
enum ENUM_TRADE_RETURN_CODES
{
    TRADE_RETCODE_REQUOTE = 10004,              // 报价请求
    TRADE_RETCODE_REJECT = 10006,               // 拒绝请求
    TRADE_RETCODE_CANCEL = 10007,               // 交易者取消请求
    TRADE_RETCODE_PLACED = 10008,               // 安置命令
    TRADE_RETCODE_DONE = 10009,                 // 完成要求
    TRADE_RETCODE_DONE_PARTIAL = 10010,         // 请求部分完成
    TRADE_RETCODE_ERROR = 10011,                // 请求处理错误
    TRADE_RETCODE_TIMEOUT = 10012,              // 超时取消请求
    TRADE_RETCODE_INVALID = 10013,              // 无效请求
    TRADE_RETCODE_INVALID_VOLUME = 10014,       // 请求中无效成交量
    TRADE_RETCODE_INVALID_PRICE = 10015,        // 请求中的无效价格
    TRADE_RETCODE_INVALID_STOPS = 10016,        // 请求中的无效访问
    TRADE_RETCODE_TRADE_DISABLED = 10017,       // 关闭交易
    TRADE_RETCODE_MARKET_CLOSED = 10018,        // 收市
    TRADE_RETCODE_NO_MONEY = 10019,             // 没有足够的钱实现请求
    TRADE_RETCODE_PRICE_CHANGED = 10020,        // 改变价格
    TRADE_RETCODE_PRICE_OFF = 10021,            // 没有报价处理请求
    TRADE_RETCODE_INVALID_EXPIRATION = 10022,   // 请求中的无效命令截止日期
    TRADE_RETCODE_ORDER_CHANGED = 10023,        // 改变命令状态
    TRADE_RETCODE_TOO_MANY_REQUESTS = 10024,    // 太频繁的请求
    TRADE_RETCODE_NO_CHANGES = 10025,           // 不改变请求
    TRADE_RETCODE_SERVER_DISABLES_AT = 10026,   // 服务器无效自动交易
    TRADE_RETCODE_CLIENT_DISABLES_AT = 10027,   // 客户端无效自动交易
    TRADE_RETCODE_LOCKED = 10028,               // 处理锁住请求
    TRADE_RETCODE_FROZEN = 10029,               // 命令或安置冻结
    TRADE_RETCODE_INVALID_FILL = 10030,         // 无效命令填满字节
    TRADE_RETCODE_CONNECTION = 10031,           // 与服务器无连接
    TRADE_RETCODE_ONLY_REAL = 10032,            // 只在流水账允许操作
    TRADE_RETCODE_LIMIT_ORDERS = 10033,         // 待办订单数量达到限制
    TRADE_RETCODE_LIMIT_VOLUME = 10034,         // 订单成交量和交易品种位置达到限制
    TRADE_RETCODE_INVALID_ORDER = 10035,        // 错误或禁止的 订单类型
    TRADE_RETCODE_POSITION_CLOSED = 10036,      // 指定 POSITION_IDENTIFIER的持仓已经被关闭
    TRADE_RETCODE_INVALID_CLOSE_VOLUME = 10038, // 平仓交易量超出当前持仓交易量
    TRADE_RETCODE_CLOSE_ORDER_EXIST = 10039,    // 指定持仓已存在平仓订单。这可能在锁仓系统工作时出现：如果持仓的平仓订单已经存在，试图反向平仓如果已有平仓订单和新下单的总交易量超出了当前持仓交易量，试图完全或部分平仓
    TRADE_RETCODE_LIMIT_POSITIONS = 10040,      // 同时存在于账户中的持仓数量可以通过服务器的设置来限定。达到限定数以后，当再尝试下单时服务器会返回TRADE_RETCODE_LIMIT_POSITIONS错误。限定操作的差异取决于账户持仓类型：单边持仓 ― 考虑持仓数。达到限定时，平台禁止可能增加持仓数的新下单行为。实际上，平台仅允许下单已有持仓的交易品种。由于执行挂单可能导致当前持仓变化但不会增加持仓数，所以不会考虑当前挂单。锁仓持仓 ― 同时考虑持仓和挂单，因为激活挂单经常意味着一个新的持仓。当限定达到时，平台禁止下可以持仓和挂单的新市场订单。
    TRADE_RETCODE_REJECT_CANCEL = 10041,        // 挂单激活请求被拒绝，订单被取消
    TRADE_RETCODE_LONG_ONLY = 10042,            // 因为交易品种(POSITION_TYPE_BUY)设置了"只允许买入持仓"的规则，所以请求被拒绝
    TRADE_RETCODE_SHORT_ONLY = 10043,           // 因为交易品种 (POSITION_TYPE_SELL)设置了"只允许卖出持仓"的规则，所以请求被拒绝
    TRADE_RETCODE_CLOSE_ONLY = 10044,           // 因为交易品种设置了"只允许平仓"的规则，所以请求被拒绝
};