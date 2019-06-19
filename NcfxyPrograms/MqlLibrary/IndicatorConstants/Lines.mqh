#include "../RootInclude.mqh"

// https://www.mql5.com/zh/docs/constants/indicatorconstants/lines

// 当复制 iMACD(), iRVI() 和 iStochastic() 值时可用的指标线标识符{
enum Line1{
    MAIN_LINE,    //0    干线
    SIGNAL_LINE,    //1    信号线
};

// 当复制 ADX() 和 ADXW() 值时可用的指标线标识符。{
enum Line2{
    MAIN_LINE,    //0    干线
    PLUSDI_LINE,    //1    线 +DI
    MINUSDI_LINE,    //2    线 –DI
};

// 当复制iBands()值时可用的指标线标识符{
enum Line2{
    BASE_LINE,    //0    干线
    UPPER_BAND,    //1    最高限制
    LOWER_BAND,    //2    最低限制
};

// 当复制 iEnvelopes() 和 iFractals()值时可用的指标线标识符{
enum Line3{
    UPPER_LINE,    //0    上边线
    LOWER_LINE,    //1    下边线
};

// 当复制iGator()值时可用的指标线标识符。{
enum Line4{
    UPPER_HISTOGRAM,    //0    上直方图
    LOWER_HISTOGRAM,    //2    底部直方图
};

// 当复制 iAlligator()值时可用的指标线标识符。{
enum Line1{
    GATORJAW_LINE,    //0    爪线
    GATORTEETH_LINE,    //1    牙线
    GATORLIPS_LINE,    //2    唇线
};

// 当复制iIchimoku()值时可用的指标线标识符。{
enum Line5{
    TENKANSEN_LINE,    //0    转换线
    KIJUNSEN_LINE,    //1    基准线
    SENKOUSPANA_LINE,    //2    闪光跨度A线
    SENKOUSPANB_LINE,    //3    闪光跨度B线
    CHIKOUSPAN_LINE,    //4    延迟线
};