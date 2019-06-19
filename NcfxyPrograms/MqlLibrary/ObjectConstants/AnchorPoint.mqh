#include "../RootInclude.mqh"

// https://www.mql5.com/zh/docs/constants/objectconstants/enum_anchorpoint

enum ENUM_ANCHOR_POINT{
    ANCHOR_LEFT_UPPER,    //左上角定位点
    ANCHOR_LEFT,    //左侧定位点
    ANCHOR_LEFT_LOWER,    //左下角定位点
    ANCHOR_LOWER,    //下方定位点
    ANCHOR_RIGHT_LOWER,    //右下方定位点
    ANCHOR_RIGHT,    //右侧定位点
    ANCHOR_RIGHT_UPPER,    //右上角定位点
    ANCHOR_UPPER,    //上方定位点
    ANCHOR_CENTER,    //对象中间严格定位点
};


enum ENUM_ARROW_ANCHOR{
    ANCHOR_TOP,    //上部定位点
    ANCHOR_BOTTOM,    //下部定位点
};
