#include "../AllConstants.mqh"

// https://www.mql5.com/zh/docs/trading

// 函数计算指定订单类型的需要保证金，在活期账户，当前的市场环境不能计算到当前的挂单和持仓。允许计算的保证金需要交易操作计划，值是返回的当前账户的值。
bool OrderCalcMargin(
    ENUM_ORDER_TYPE action, // 订单类型
    string symbol,          // 交易品种名称
    double volume,          // 交易量
    double price,           // 开盘价
    double &margin          // 为获取保证金值的值
);

// 函数为当前账户计算利润，在当前的交易市场条件下，以参量为基础传递。函数使用交易操作的结构进行再评估，值是返回的当前账户的值。
bool OrderCalcProfit(
    ENUM_ORDER_TYPE action, // 订单类型 (ORDER_TYPE_BUY 或者 ORDER_TYPE_SELL)
    string symbol,          // 交易品种名称
    double volume,          // 交易量
    double price_open,      // 开盘价
    double price_close,     // 收盘价
    double &profit          // 为获得利润值的变量
);

// OrderCheck()函数检测是否有足够的钱执行需要的交易操作。检测结果在MqlTradeCheckResult结构域中。
bool OrderCheck(
    MqlTradeRequest &request,   // 请求结构
    MqlTradeCheckResult &result // 结果结构
);

// 通过向服务器发送请求，OrderSend()函数用来执行交易操作操作。
bool OrderSend(
    MqlTradeRequest &request, // query structure
    MqlTradeResult &result    // structure of the answer
);

// OrderSendAsync() 函数用于指导不同步的 交易操作 ，无需等待交易服务器对发送请求的回应。该函数专为高频交易设计，根据交易算法，无法接受浪费时间等候来自服务器的回应。
bool OrderSendAsync(
    MqlTradeRequest &request, // 请求架构
    MqlTradeResult &result    // 请求架构
);

// 返回持仓的数量。
int PositionsTotal();

// 返回的交易品种与开仓位置的值保持一致，使用 PositionGetDouble， PositionGetInteger， PositionGetString函数为下一项操作自动选择位置。
string PositionGetSymbol(
    int index // 仓位列表中的数量
);

// 为接下来的工作选择一个仓位，如果函数成功完成，返回true，如果失败返回false，调用 GetLastError()函数获取错误信息。
bool PositionSelect(
    string symbol // 交易品种名称
);

// 根据持仓中指定的报价号选择持仓。如果成功，返回true。如果函数失败，返回false。调用GetLastError() 了解错误详情。
bool PositionSelectByTicket(
    ulong ticket // 持仓价格
);

// 函数返回持仓的要求性质，使用PositionGetSymbol或者 PositionSelect预选出来，仓位属性必须是双精度型，有两种变体函数。
// 1. 立即返回属性值。
double PositionGetDouble(
    ENUM_POSITION_PROPERTY_DOUBLE property_id // 属性标识符
);

// 2. 返回true或者false，取决于函数执行成功与否，如果成功，性质值通过引用安置在最后参量的接受变量里。
bool PositionGetDouble(
    ENUM_POSITION_PROPERTY_DOUBLE property_id, // 属性标识符
    double &double_var                         // 这里接受属性值
);

// 函数返回持仓需求属性，使用 PositionGetSymbol 或者 PositionSelect. 预选出来，仓位属性的类型是时间日期整型，有两种变体函数。
// 1. 立即返回属性值
long PositionGetInteger(
    ENUM_POSITION_PROPERTY_INTEGER property_id // 属性标识符
);

// 2. 返回true或者false，取决于函数执行成功与否，如果成功，性质值通过引用安置在最后参量的接受变量里。
bool PositionGetInteger(
    ENUM_POSITION_PROPERTY_INTEGER property_id, // 属性标识符
    long &long_var                              // 这里接受属性值
);

// 函数返回持仓需求属性，使用PositionGetSymbol或者PositionSelect预选出来。仓位属性可以是字符串型。有2种变体函数。
// 1. 立即返回属性值
string PositionGetString(
    ENUM_POSITION_PROPERTY_STRING property_id // 属性标识符
);

// 2. 返回true或者false，取决于函数执行成功与否，如果成功，性质值通过引用安置在最后参量的接受变量里。
bool PositionGetString(
    ENUM_POSITION_PROPERTY_STRING property_id, // 属性标识符
    string &string_var                         // 这里接受属性值
);

// 该函数返回持仓列表中指定索引的持仓报价，自动选择使用 PositionGetDouble，PositionGetInteger，PositionGetString函数的持仓。
ulong PositionGetTicket(
    int index // 列表中的持仓编号
);

// 返回当前订单数。
int OrdersTotal();

// 返回类似订单票据，使用函数自动选择订单工作.
ulong OrderGetTicket(
    int index // 订单列表中的数量
);

// 选择工作订单。如果函数成功调用返回真值，如果函数没能完成，返回错误值，了解更多关于错误调用的信息，使用 GetLastError()。
bool OrderSelect(
    ulong ticket // 订单号
);

// 返回订单的需求属性，使用 OrderGetTicket 或者 OrderSelect 进行预选择。订单属性必须是双精度类型。有两种变量函数可以使用。
// 1. 立即返回属性值。
double OrderGetDouble(
    ENUM_ORDER_PROPERTY_DOUBLE property_id // 属性标识符
);

// 2. 依据函数是否成功调用返回真值或者错误值。如果成功，目标变量的属性值通过引用传递到最后参量。
bool OrderGetDouble(
    ENUM_ORDER_PROPERTY_DOUBLE property_id, // 属性标识符
    double &double_var                      // 这里接受属性值
);

// 返回订单性质的要求，使用OrderGetTicket 或者 OrderSelect重新选择，属性一定是日期时间，整型。有2种变量函数可以使用。
// 1. 立即返回属性值。
long OrderGetInteger(
    ENUM_ORDER_PROPERTY_INTEGER property_id // 属性标识符
);

// 2. 依据函数成功与否返回真值或者错误值。如果成功，目标变量的属性值通过引用传递到最后参量。
bool OrderGetInteger(
    ENUM_ORDER_PROPERTY_INTEGER property_id, // 属性标识符
    long &long_var                           // 这里接受属性值
);

// 返回要求的订单属性，使用 OrderGetTicket 或者 OrderSelect预选择。订单属性一定是字符串型。有2种变量函数可以使用。
// 1. 立即返回属性值。
string OrderGetString(
    ENUM_ORDER_PROPERTY_STRING property_id // 属性标识符
);

// 2. 依据函数成功与否返回真值或者错误值。如果成功，目标变量的属性值通过引用传递到最后参量。
bool OrderGetString(
    ENUM_ORDER_PROPERTY_STRING property_id, // 属性标识符
    string &string_var                      // 这里接受属性值
);

// 在服务器特定时间段，检索交易和订单的历史。
bool HistorySelect(
    datetime from_date, // 开始日期
    datetime to_date    // 结束日期
);

// 检索特殊位置标识符交易和订单历史记录。
bool HistorySelectByPosition(
    long position_id // 仓位标识符 - POSITION_IDENTIFIER
);

// 从历史中选择订单，彻底调用适当函数。如果函数成功完成，返回真值，如果函数返回失败显示错误值。更多错误订单调用 GetLastError()。
bool HistoryOrderSelect(
    ulong ticket // 订单号
);

// 在历史中返回订单数量。优先调用HistoryOrdersTotal()，首先需要接收使用HistorySelect()或者 HistorySelectByPosition() 函数的交易和订单历史记录。
int HistoryOrdersTotal();

// 在历史中返回相关订单报价。优先调用HistoryOrderGetTicket()，首先需要接收使用HistorySelect()或者 HistorySelectByPosition() 函数的交易和订单历史记录。
ulong HistoryOrderGetTicket(
    int index // 订单列表中的数量
);


// 返回要求的订单属性，订单属性一定是双精度型。有2个变量属性可供使用。
// 1. 立即返回属性值。
double  HistoryOrderGetDouble( 
   ulong                       ticket_number,     // 订单号 
   ENUM_ORDER_PROPERTY_DOUBLE  property_id        // 属性标识符 
   );

// 2. 依据函数成功与否返回真值或者错误值。如果成功，目标变量的属性值通过引用传递到最后参量。
bool  HistoryOrderGetDouble( 
   ulong                       ticket_number,     // 订单号 
   ENUM_ORDER_PROPERTY_DOUBLE  property_id,       // 属性标识符 
   double&                     double_var         // 这里接受属性值 
   );

// 返回订单的要求属性，订单属性一定是日期时间，整型，有2种变量函数可供使用。
// 1. 立即返回属性值。
long  HistoryOrderGetInteger( 
   ulong                        ticket_number,     // 订单号 
   ENUM_ORDER_PROPERTY_INTEGER  property_id        // 属性标识符 
   );

// 2. 依据函数成功与否返回真值或者错误值。如果成功，目标变量的属性值通过引用传递到最后参量。
bool  HistoryOrderGetInteger( 
   ulong                        ticket_number,     // 订单号 
   ENUM_ORDER_PROPERTY_INTEGER  property_id,       // 属性标识符 
   long&                        long_var           // 这里接受属性值 
   );

// 返回订单要求属性，订单属性一定是字符串类型，有2个变量函数可供使用。
// 1. 立即返回属性值。
string  HistoryOrderGetString( 
   ulong                       ticket_number,     // 订单号 
   ENUM_ORDER_PROPERTY_STRING  property_id        // 属性标识符 
   );

// 2. 依据函数成功与否返回真值或者错误值。如果成功，目标变量的属性值通过引用传递到最后参量。
bool  HistoryOrderGetString( 
   ulong                       ticket_number,     // 订单号 
   ENUM_ORDER_PROPERTY_STRING  property_id,       // 属性标识符 
   string&                     string_var         // 这里接受属性值 
   );

// 通过调用恰当函数选择历史交易。如果函数成功完成，返回真值，如果函数失败返回错误值。有关错误更多细节，调用 GetLastError()。
bool  HistoryDealSelect( 
   ulong  ticket      // 交易订单号 
   );

// 返回历史交易数量，先前调用HistoryDealsTotal()，首先有必要接收交易历史和使用HistorySelect()或者HistorySelectByPosition() 函数的订单。
int  HistoryDealsTotal();

// 函数选择进一步交易过程并返回历史交易票据。优先调用HistoryDealGetTicket()，首先有必要接收使用 HistorySelect() 或者 HistorySelectByPosition() 函数的交易和订单历史记录 。
ulong  HistoryDealGetTicket( 
   int  index      // 订单号交易 
   );


// 返回要求的交易属性，交易属性一定是双精度型，有2中变量函数可供使用。
// 1. 立即返回属性值。
double  HistoryDealGetDouble( 
   ulong                      ticket_number,     // 订单号 
   ENUM_DEAL_PROPERTY_DOUBLE  property_id        // 属性标识符 
   );

// 2. 依据函数成功与否返回真值或者错误值。如果成功，目标变量的属性值通过引用传递到最后参量。
bool  HistoryDealGetDouble( 
   ulong                      ticket_number,     // 订单号 
   ENUM_DEAL_PROPERTY_DOUBLE  property_id,       // 属性标识符 
   double&                    double_var         // 这里接受属性值 
   );


// 返回要求交易的属性，交易属性一定是日期时间，整型。有2个变量函数可供使用。
// 1. 立即返回属性值。
long  HistoryDealGetInteger( 
   ulong                       ticket_number,     // 订单号 
   ENUM_DEAL_PROPERTY_INTEGER  property_id        // 属性标识符 
   );

// 2. 依据函数成功与否返回真值或者错误值。如果成功，目标变量的属性值通过引用传递到最后参量。
bool  HistoryDealGetInteger( 
   ulong                       ticket_number,     // 订单号 
   ENUM_DEAL_PROPERTY_INTEGER  property_id,       // 属性标识符 
   long&                       long_var           // 这里接受属性值 
   );


// 返回要求的交易属性，交易属性一定是字符串型，有2个变量函数可供使用。
// 1. 立即返回属性值。
string  HistoryDealGetString( 
   ulong                      ticket_number,     // 订单号 
   ENUM_DEAL_PROPERTY_STRING  property_id        // 属性标识符 
   );

// 2. 依据函数成功与否返回真值或者错误值。如果成功，目标变量的属性值通过引用传递到最后参量。
bool  HistoryDealGetString( 
   ulong                      ticket_number,     //订单号 
   ENUM_DEAL_PROPERTY_STRING  property_id,       // 属性标识符 
   string&                    string_var         // 这里接受属性值 
   );