#include "../RootInclude.mqh"

// https://www.mql5.com/zh/docs/constants/tradingconstants/enum_book_type

enum ENUM_BOOK_TYPE{
    BOOK_TYPE_SELL,    //卖出命令（要价）
    BOOK_TYPE_BUY,    //买入命令（出价）
    BOOK_TYPE_SELL_MARKET,    //市场的卖出订单
    BOOK_TYPE_BUY_MARKET,    //市场的买入订单
};
    