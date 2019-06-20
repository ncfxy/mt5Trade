#include "../RootInclude.mqh"

// https://www.mql5.com/zh/docs/constants/tradingconstants/positionproperties

enum ENUM_POSITION_PROPERTY_INTEGER
{
    POSITION_TICKET,          //持仓价格。每个新持仓分配唯一的号码通常用于持仓的订单价格是匹配的，除非由于服务器的服务操作而导致价格发生变化，例如，收取重新持仓的库存费时。若要寻找用于持仓的订单，应用POSITION_IDENTIFIER 属性。
                              // POSITION_TICKET 值相对应MqlTradeRequest::position。    long
    POSITION_TIME,            //开盘时间位置    datetime
    POSITION_TIME_MSC,        //以毫秒为单位计算01.01.1970以来持仓的时间    long
    POSITION_TIME_UPDATE,     //以秒为单位计算01.01.1970以来持仓更改的时间    long
    POSITION_TIME_UPDATE_MSC, //以毫秒为单位计算01.01.1970以来持仓更改的时间    long
    POSITION_TYPE,            //位置类型    ENUM_POSITION_TYPE
    POSITION_MAGIC,           //位置幻数（参看 ORDER_MAGIC ）    long
    POSITION_IDENTIFIER,      //位置标识符是独一的数字，对于每个新的开仓位来说是制定的且在整个使用期内是不可更改的，翻转位置不能改变它的标识符。
                              // 每个订单(ORDER_POSITION_ID)和每笔交易(DEAL_POSITION_ID) 都会指定用来打开、更改或关闭它的持仓识别器。使用这个属性来搜索持仓相关的订单和交易。
                              // 当单边模式下逆转持仓（使用单进/单出交易）时，POSITION_IDENTIFIER不会改变。但是，POSITION_TICKET会被替换为导致逆转的订单单号。而在锁仓模式下不提供逆转持仓。    long
    POSITION_REASON,          //持仓的原因    ENUM_POSITION_REASON
};

enum ENUM_POSITION_PROPERTY_DOUBLE
{
    POSITION_VOLUME,        //方位成交量    double
    POSITION_PRICE_OPEN,    //方位开盘价格    double
    POSITION_SL,            //开仓止损水平    double
    POSITION_TP,            //开仓获利水平    double
    POSITION_PRICE_CURRENT, //开仓当前价位    double
    POSITION_SWAP,          //积累交换    double
    POSITION_PROFIT,        //当前利润    double
};

enum ENUM_POSITION_PROPERTY_STRING
{
    POSITION_SYMBOL,      //交易品种位置    string
    POSITION_COMMENT,     //方位注释    string
    POSITION_EXTERNAL_ID, //外部交易系统（交易所）中的持仓ID    string
};

enum ENUM_POSITION_TYPE
{
    POSITION_TYPE_BUY,  //买入
    POSITION_TYPE_SELL, //卖出
};

enum ENUM_POSITION_REASON
{
    POSITION_REASON_CLIENT, //因激活桌面程序端的下单来持仓
    POSITION_REASON_MOBILE, //因激活移动程序端的下单来持仓
    POSITION_REASON_WEB,    //因激活网页平台的下单来持仓
    POSITION_REASON_EXPERT, //因激活MQL5程序的下单来持仓，例如EA交易或脚本
};

// 1. 立即返回属性值

long PositionGetInteger(
    ENUM_POSITION_PROPERTY_INTEGER property_id // 属性标识符
);

// 2. 返回true或者false，取决于函数执行成功与否，如果成功，性质值通过引用安置在最后参量的接受变量里。

bool PositionGetInteger(
    ENUM_POSITION_PROPERTY_INTEGER property_id, // 属性标识符
    long &long_var                              // 这里接受属性值
);

// 1. 立即返回属性值。

double PositionGetDouble(
    ENUM_POSITION_PROPERTY_DOUBLE property_id // 属性标识符
);

// 2. 返回true或者false，取决于函数执行成功与否，如果成功，性质值通过引用安置在最后参量的接受变量里。

bool PositionGetDouble(
    ENUM_POSITION_PROPERTY_DOUBLE property_id, // 属性标识符
    double &double_var                         // 这里接受属性值
);

// 1. 立即返回属性值

string PositionGetString(
    ENUM_POSITION_PROPERTY_STRING property_id // 属性标识符
);

// 2. 返回true或者false，取决于函数执行成功与否，如果成功，性质值通过引用安置在最后参量的接受变量里。

bool PositionGetString(
    ENUM_POSITION_PROPERTY_STRING property_id, // 属性标识符
    string &string_var                         // 这里接受属性值
);