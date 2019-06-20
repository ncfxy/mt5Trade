#include "../RootInclude.mqh"

// https://www.mql5.com/zh/docs/constants/tradingconstants/orderproperties

enum ENUM_ORDER_PROPERTY_INTEGER{
    ORDER_TICKET,    //订单价格。每个订单分配唯一的号码    long
    ORDER_TIME_SETUP,    //订单设置时间    datetime
    ORDER_TYPE,    //订单类型    ENUM_ORDER_TYPE
    ORDER_STATE,    //订单陈述    ENUM_ORDER_STATE
    ORDER_TIME_EXPIRATION,    //订单终结时间    datetime
    ORDER_TIME_DONE,    //订单执行或取消时间    datetime
    ORDER_TIME_SETUP_MSC,    //以毫秒为单位计算01.01.1970以来下订单执行的时间    long
    ORDER_TIME_DONE_MSC,    //以毫秒为单位计算01.01.1970以来订单执行/取消的时间    long
    ORDER_TYPE_FILLING,    //订单填满类型    ENUM_ORDER_TYPE_FILLING
    ORDER_TYPE_TIME,    //订单使用期    ENUM_ORDER_TYPE_TIME
    ORDER_MAGIC,    //EA交易的ID安置在订单之中（为确保每个EA交易安置都有独特的代码）    long
    ORDER_REASON,    //下单的原因或源    ENUM_ORDER_REASON
    ORDER_POSITION_ID,    //一旦执行，位置指标马上建立一个订单。每个执行订单结果都使订单公开或修改已经存在的位置，明确指出指标的位置同时执行订单    long
    ORDER_POSITION_BY_ID,    //反向持仓标识符，用于关闭订单ORDER_TYPE_CLOSE_BY    long
};

enum ENUM_ORDER_PROPERTY_DOUBLE{
    ORDER_VOLUME_INITIAL,    //订单最初交易量    double
    ORDER_VOLUME_CURRENT,    //订单当前交易量    double
    ORDER_PRICE_OPEN,    //订单中的规定价格    double
    ORDER_SL,    //斩仓值    double
    ORDER_TP,    //盈利值    double
    ORDER_PRICE_CURRENT,    //交易品种订单的当前价格    double
    ORDER_PRICE_STOPLIMIT,    //限制停止订单的限制价格订单    double
};

enum ENUM_ORDER_PROPERTY_STRING{
    ORDER_SYMBOL,    //交易品种订单    string
    ORDER_COMMENT,    //评价订单    string
};

enum ENUM_ORDER_TYPE{
    ORDER_TYPE_BUY,    //市场购买订单
    ORDER_TYPE_SELL,    //市场卖出订单
    ORDER_TYPE_BUY_LIMIT,    //限制买入待办订单
    ORDER_TYPE_SELL_LIMIT,    //限制卖出待办订单
    ORDER_TYPE_BUY_STOP,    //停止买入待办订单
    ORDER_TYPE_SELL_STOP,    //停止卖出待办订单
    ORDER_TYPE_BUY_STOP_LIMIT,    //在到达订单价格之上，是限制买入订单安置在停止限制价格中
    ORDER_TYPE_SELL_STOP_LIMIT,    //在到达订单价格之上，是限制卖出订单安置在停止限制价格中
    ORDER_TYPE_CLOSE_BY,    //通过反向持仓平仓的订单
};

enum ENUM_ORDER_STATE{
    ORDER_STATE_STARTED,    //选中订单，并未被经纪人接收
    ORDER_STATE_PLACED,    //接收订单
    ORDER_STATE_CANCELED,    //客户撤销订单
    ORDER_STATE_PARTIAL,    //履行部分订单
    ORDER_STATE_FILLED,    //履行全部订单
    ORDER_STATE_REJECTED,    //驳回订单
    ORDER_STATE_EXPIRED,    //过期订单
    ORDER_STATE_REQUEST_ADD,    //注册订单（到交易系统）
    ORDER_STATE_REQUEST_MODIFY,    //更改订单（改变其参数）
    ORDER_STATE_REQUEST_CANCEL,    //删除订单（从交易系统中删除）
};

enum ENUM_ORDER_TYPE_FILLING{
    ORDER_FILLING_FOK,    //执行政策意味着订单只可以在指定额度执行。如果当前市场不提供金融工具需要的额度，订单将无法执行。需要的交易量可以使用市场此刻几种可用的提供来执行。
    ORDER_FILLING_IOC,    //该模式意味着交易者同意在订单指定范围内，以市场可用的最大交易量执行交易。如果无法执行全部订单交易量，那么剩下的交易量将被取消。
    ORDER_FILLING_RETURN,    //该政策只用于市场订单 (ORDER_TYPE_BUY 和 ORDER_TYPE_SELL)，限价和止损限价订单 (ORDER_TYPE_BUY_LIMIT，ORDER_TYPE_SELL_LIMIT，ORDER_TYPE_BUY_STOP_LIMIT 和 ORDER_TYPE_SELL_STOP_LIMIT ) 并且只用于市场或交易 执行的交易品种。如果部分执行市场或剩下交易量的限价订单没有取消，则是会进一步处理。
                            // 为了激活ORDER_TYPE_BUY_STOP_LIMIT 和 ORDER_TYPE_SELL_STOP_LIMIT 订单，将会创建ORDER_FILLING_RETURN执行类型相应的限价订单 ORDER_TYPE_BUY_LIMIT/ORDER_TYPE_SELL_LIMIT 。
};

enum ENUM_ORDER_TYPE_TIME{
    ORDER_TIME_GTC,    //取消订单
    ORDER_TIME_DAY,    //前交易日订单
    ORDER_TIME_SPECIFIED,    //过期订单
    ORDER_TIME_SPECIFIED_DAY,    //订单将生效直至指定日期的23:59:59。如果该时间超出了交易期，那么该订单会在最近的交易时间内到期。
};

enum ENUM_ORDER_REASON{
    ORDER_REASON_CLIENT,    //从桌面程序端下单
    ORDER_REASON_MOBILE,    //从移动程序端下单
    ORDER_REASON_WEB,    //从网页平台下单
    ORDER_REASON_EXPERT,    //从MQL5程序下单，例如EA交易或脚本
    ORDER_REASON_SL,    //因激活止损而下单
    ORDER_REASON_TP,    //因激活止赢而下单
    ORDER_REASON_SO,    //因Stop Out 事件而下单
};
