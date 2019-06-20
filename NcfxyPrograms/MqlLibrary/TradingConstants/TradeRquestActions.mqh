#include "../RootInclude.mqh"

// https://www.mql5.com/zh/docs/constants/tradingconstants/enum_trade_request_actions

enum ENUM_TRADE_REQUEST_ACTIONS{
    TRADE_ACTION_DEAL,    //为规定参数的立即执行放置交易命令（市场命令）
    TRADE_ACTION_PENDING,    //在制定环境下执行放置交易命令（待办订单）
    TRADE_ACTION_SLTP,    //修改折仓并取走开仓利润值
    TRADE_ACTION_MODIFY,    //修改先前放置的命令参量
    TRADE_ACTION_REMOVE,    //删除先前放置的待办订单命令
    TRADE_ACTION_CLOSE_BY,    //通过反向持仓来平仓
};
