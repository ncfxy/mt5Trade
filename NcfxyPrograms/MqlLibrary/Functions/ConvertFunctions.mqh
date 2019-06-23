#include "../AllConstants.mqh"

// https://www.mql5.com/zh/docs/convert

// 将字符型转换成字符串型结果。
string CharToString(
    uchar char_code // 交易品种的数值代码
);

// 将双字符型部分数组复制或转换成返回型字符串
string CharArrayToString(
    uchar array[],         // 数组
    int start = 0,         // 数组启动位置
    int count = -1,        // 交易品种数
    uint codepage = CP_ACP // 代码页
);

// 将uchar类型数组复制到POD结构。
bool CharArrayToStruct(
    void *struct_object,       //结构
    const uchar *char_array[], //数组
    uint start_pos = 0         // 数组中的起始位置
);

// 将POD结构复制到uchar类型数组。
bool StructToCharArray(
    const void *struct_object, //结构
    uchar *char_array[],       // 数组
    uint start_pos = 0         // 数组中的起始位置
);

// 该函数将color 类型转换为uint 类型以获得ARGB的颜色显示。ARGB颜色格式被用于生成图形资源， 文本展示，以及被用在CCanvas标准程序库类。
uint ColorToARGB(
    color clr,        // 以color格式转换颜色
    uchar alpha = 255 // 阿尔法通道管理彩色透明度
);

// 转换颜色值到字符串RGB形式
string ColorToString(
    color color_value, // 颜色值
    bool color_name    // 是否显示颜色名称
);

// 把数字值转换成文本串
string DoubleToString(
    double value,  // 数字
    int digits = 8 // 小数点后的数字数
);

// 转换任何类型的枚举值到文本格式。
string EnumToString(
    any_enum value // 任何类型的枚举值
);

// 函数将整数类型值转变成特定长度的字符串值并返回包含的字符串。
string IntegerToString(
    long number,             // 数字
    int str_len = 0,         // 字符串结果长度
    ushort fill_symbol = ' ' // 填充物
);

// 把交易品种代码（统一码）转变成字符串交易品种中的一中，返回结果字符串。
string ShortToString(
    ushort symbol_code // 交易品种
);

// 把数组的复制部分转到返回字符串。
string ShortArrayToString(
    ushort array[], // 数组
    int start = 0,  // 数组中的启动位置
    int count = -1  // 交易品种数
);

enum TIME_OUT_MODE {
    TIME_DATE,
    TIME_MINUTES
};
// 转变值包括从01.01.1970起已消耗的秒数，以字符串格式"yyyy.mm.dd hh:mi"
string TimeToString(
    datetime value,                     // 数字
    int mode = TIME_DATE | TIME_MINUTES // 输出形式
);

// 把浮点类型转变成指定精确度
double NormalizeDouble(
    double value, // 标准化号码
    int digits    // 小数点后的数字数
);

// 交易品种复制从一个Unicode型字符串转变成ANSI，双字符型数组的选择位置，返回复制元素的数量。
int StringToCharArray(
    string text_string,    // 源字符串
    uchar *array[],        // 数组
    int start = 0,         // 数组中的启动位置
    int count = -1,        // 交易品种数
    uint codepage = CP_ACP // 代码页
);

// 使用颜色名称将RGB字符串型转变成颜色类型值
color StringToColor(
    string color_string // 字符串颜色表示
);

// 将字符串转变成数字的双精度型
double StringToDouble(
    string value // 字符串
);

// 将字符串型转换成整型结果。
long StringToInteger(
    string value // 字符串
);

// 函数的交易品种复制一组字符串到长短型数组的规定地点，返回复制元素的数量。
int StringToShortArray(
    string text_string, // 源字符串
    ushort *array[],    // 数组
    int start = 0,      // 数组启动位置
    int count = -1      // 交易品种数
);

// 将"yyyy.mm.dd [hh:mi]"格式中包含时间和/或日期的字符串转换格式为datetime类型号。
datetime StringToTime(
    const string time_string // 日期字符串
);

// 该函数格式包括参量和字符串的返回
string StringFormat(
    string format, // 带有格式描述的字符串
    ...            // 参量
);