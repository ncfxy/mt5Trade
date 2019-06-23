#include "../AllConstants.mqh"

// https://www.mql5.com/zh/docs/account/accountinfostring

// 返回对应账户财产值。
double AccountInfoDouble(
    ENUM_ACCOUNT_INFO_DOUBLE property_id // 属性标识符
);

// 返回账户属性值。
long AccountInfoInteger(
    ENUM_ACCOUNT_INFO_INTEGER property_id // 属性标识符
);

// 返回对应账户属性值。
string AccountInfoString(
    ENUM_ACCOUNT_INFO_STRING property_id // 属性标识符
);