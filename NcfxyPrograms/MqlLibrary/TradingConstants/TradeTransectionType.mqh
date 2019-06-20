#include "../RootInclude.mqh"

// https://www.mql5.com/zh/docs/constants/tradingconstants/enum_trade_transaction_type

enum ENUM_TRADE_TRANSACTION_TYPE{
    TRADE_TRANSACTION_ORDER_ADD,    //新增新的持仓订单。
    TRADE_TRANSACTION_ORDER_UPDATE,    //更新持仓订单。更新不仅包括明显的客户端或交易服务器的变化还包括设置时的订单状态的变化（例如，转换从 ORDER_STATE_STARTED 到 ORDER_STATE_PLACED 或从 ORDER_STATE_PLACED 到 ORDER_STATE_PARTIAL等等)。
    TRADE_TRANSACTION_ORDER_DELETE,    //从持仓订单列表移除订单。设置相应的请求或执行（填充）和移动到历史记录后，订单可以从持仓订单中删除。
    TRADE_TRANSACTION_DEAL_ADD,    //添加交易到历史记录。订单执行执行操作或者执行账户结余操作。
    TRADE_TRANSACTION_DEAL_UPDATE,    //更新历史记录交易。可能会有之前执行的交易变更到服务器上的情况。例如，交易在之前交易商转移的外部交易系统（交换）中已经发生了变化。
    TRADE_TRANSACTION_DEAL_DELETE,    //删除历史记录的交易。可能会有之前执行的交易从服务器删除的情况。例如，交易在之前交易商转移的外部交易系统（交换）中已经被删除。
    TRADE_TRANSACTION_HISTORY_ADD,    //添加订单到历史记录就是执行或取消的结果。
    TRADE_TRANSACTION_HISTORY_UPDATE,    //改变位于订单历史中的订单。这个类型用于加强交易服务器的功能。
    TRADE_TRANSACTION_HISTORY_DELETE,    //删除订单历史记录的订单。这个类型用于加强交易服务器的功能。
    TRADE_TRANSACTION_POSITION,    //改变与交易执行无关的持仓。这种事务类型表示持仓可以在交易服务器上改变。持仓交易量，开盘价，止损和获利水平可以改变。更改的数据以 MqlTradeTransaction 结构通过 OnTradeTransaction 处理器来提交。持仓变化（添加，更改或关闭），作为交易执行的结果，不会引起 TRADE_TRANSACTION_POSITION 事务的出现。
    TRADE_TRANSACTION_REQUEST,    //服务器处理交易请求和处理结果的通知已经收到。只有类型字段（交易事务类型）必须以MqlTradeTransaction 结构分析该事务。 OnTradeTransaction (请求和结果)的第二和第三参数必须分析额外的数据。
};