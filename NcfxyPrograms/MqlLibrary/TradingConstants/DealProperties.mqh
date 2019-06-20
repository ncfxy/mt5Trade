#include "../RootInclude.mqh"

// https://www.mql5.com/zh/docs/constants/tradingconstants/dealproperties

enum ENUM_DEAL_PROPERTY_INTEGER
{
    DEAL_TICKET,      //交易标签。分配到每笔交易的唯一号码    long
    DEAL_ORDER,       //交易 订单号    long
    DEAL_TIME,        //交易时间    datetime
    DEAL_TIME_MSC,    //以毫秒为单位计算01.01.1970以来交易执行的时间    long
    DEAL_TYPE,        //交易类型    ENUM_DEAL_TYPE
    DEAL_ENTRY,       //交易条目―允许进入、允许输出、颠倒    ENUM_DEAL_ENTRY
    DEAL_MAGIC,       //订单幻数（参见 ORDER_MAGIC ）    long
    DEAL_REASON,      //交易执行的原因或源    ENUM_DEAL_REASON
    DEAL_POSITION_ID, //仓位标识符在该交易持仓、修正或者平仓时，每个位置都有一个独特的标识符，为交易对象它被委派到所有执行订单，在全部方位使用期    long
};

enum ENUM_DEAL_PROPERTY_DOUBLE
{
    DEAL_VOLUME,     //成交量    double
    DEAL_PRICE,      //成交价格    double
    DEAL_COMMISSION, //订单佣金关    double
    DEAL_SWAP,       //关闭的积累交换    double
    DEAL_PROFIT,     //交易利润    double
};

enum ENUM_DEAL_PROPERTY_STRING
{
    DEAL_SYMBOL,  //订单交易品种    string
    DEAL_COMMENT, //订单佣金    string
};

enum ENUM_DEAL_TYPE
{
    DEAL_TYPE_BUY,                      //买入
    DEAL_TYPE_SELL,                     //卖出
    DEAL_TYPE_BALANCE,                  //结算
    DEAL_TYPE_CREDIT,                   //信贷
    DEAL_TYPE_CHARGE,                   //额外金额
    DEAL_TYPE_CORRECTION,               //修正
    DEAL_TYPE_BONUS,                    //奖金
    DEAL_TYPE_COMMISSION,               //额外手续费
    DEAL_TYPE_COMMISSION_DAILY,         //日手续费
    DEAL_TYPE_COMMISSION_MONTHLY,       //月手续费
    DEAL_TYPE_COMMISSION_AGENT_DAILY,   //日代理手续费
    DEAL_TYPE_COMMISSION_AGENT_MONTHLY, //月代理手续费
    DEAL_TYPE_INTEREST,                 //利率
    DEAL_TYPE_BUY_CANCELED,             //取消的买入交易。可能会有之前执行的买入交易被取消的情况。这样的话，之前执行的交易类型 (DEAL_TYPE_BUY) 会被改为 DEAL_TYPE_BUY_CANCELED，并且其利润/亏损归零。执行获得的利润/亏损会使用单独的结余操作被收费/取款。
    DEAL_TYPE_SELL_CANCELED,            //取消的卖出交易。可能会有之前执行的卖出交易被取消的情况。这样的话，之前执行的交易类型 (DEAL_TYPE_SELL)会被改为 DEAL_TYPE_SELL_CANCELED，并且其利润/亏损归零。执行获得的利润/亏损会使用单独的结余操作被收费/取款。
    DEAL_DIVIDEND,                      //股息操作
    DEAL_DIVIDEND_FRANKED,              //税务减免（免税）股息操作
    DEAL_TAX,                           //税费
};

enum ENUM_DEAL_ENTRY
{
    DEAL_ENTRY_IN,     //进入
    DEAL_ENTRY_OUT,    //出局
    DEAL_ENTRY_INOUT,  //反面
    DEAL_ENTRY_OUT_BY, //通过反向持仓来平仓
};

enum ENUM_DEAL_REASON
{
    DEAL_REASON_CLIENT,   //因激活桌面程序端下单的订单来执行交易
    DEAL_REASON_MOBILE,   //因激活移动程序端下单的订单来执行交易
    DEAL_REASON_WEB,      //因激活网页平台下单的订单来执行交易
    DEAL_REASON_EXPERT,   //因激活从MQL5程序下单的订单来执行交易，例如EA交易或脚本
    DEAL_REASON_SL,       //因激活止损来执行交易
    DEAL_REASON_TP,       //因激活止赢来执行交易
    DEAL_REASON_SO,       //因Stop Out 事件来执行交易
    DEAL_REASON_ROLLOVER, //因rollover 来执行交易
    DEAL_REASON_VMARGIN,  //收取变动预付款后执行交易
    DEAL_REASON_SPLIT,    //宣布分割期间拥有持仓的品种进行分割（价格降低）后执行交易
};

// 1. 立即返回属性值。
long HistoryDealGetInteger(
    long ticket_number,                   // 订单号
    ENUM_DEAL_PROPERTY_INTEGER property_id // 属性标识符
);

// 2. 依据函数成功与否返回真值或者错误值。如果成功，目标变量的属性值通过引用传递到最后参量。
bool HistoryDealGetInteger(
    long ticket_number,                    // 订单号
    ENUM_DEAL_PROPERTY_INTEGER property_id, // 属性标识符
    long &long_var                          // 这里接受属性值
);

// 1. 立即返回属性值。
double HistoryDealGetDouble(
    long ticket_number,                  // 订单号
    ENUM_DEAL_PROPERTY_DOUBLE property_id // 属性标识符
);

// 2. 依据函数成功与否返回真值或者错误值。如果成功，目标变量的属性值通过引用传递到最后参量。
bool HistoryDealGetDouble(
    long ticket_number,                   // 订单号
    ENUM_DEAL_PROPERTY_DOUBLE property_id, // 属性标识符
    double &double_var                     // 这里接受属性值
);

// 1. 立即返回属性值。
string HistoryDealGetString(
    long ticket_number,                  // 订单号
    ENUM_DEAL_PROPERTY_STRING property_id // 属性标识符
);

// 2. 依据函数成功与否返回真值或者错误值。如果成功，目标变量的属性值通过引用传递到最后参量。
bool HistoryDealGetString(
    long ticket_number,                   //订单号
    ENUM_DEAL_PROPERTY_STRING property_id, // 属性标识符
    string &string_var                     // 这里接受属性值
);