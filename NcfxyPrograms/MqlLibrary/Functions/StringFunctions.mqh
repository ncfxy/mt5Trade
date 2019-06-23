#include "../AllConstants.mqh"

// https://www.mql5.com/zh/docs/strings

// 在字符串末尾添加子串。
bool StringAdd(
    string &string_var,  // 将要添加内容的字符串
    string add_substring // 被添加的字符串
);

// 该函数为字符串返回分离式缓冲器的大小。
int StringBufferLen(
    string string_var // 字符串
);

// 该函数是比较两个字符串并且以整数形式返回比较结果。
int StringCompare(
    const string &string1,     // 比较的第一个字符串
    const string &string2,     // 比较的第二个字符串
    bool case_sensitive = true // 为比较选择大小写敏感模式
);

// 数据的字串符形式通过并且返回常规字符串大小。 参量可以为任意类型。通过参量的总数不得少于2字符或超过64个字符。
int StringConcatenate(
    string &string_var, // 要形成的字符串
    void *argument1,    // 任何简单类型的第一参量
    void *argument2     // 任何简单类型的第二参量
    ...                 // 任何简单类型的下一个参量
);

// 通过指定交易品种填充所选字符串。
bool StringFill(
    string &string_var, // 要添加的字符串
    ushort character    // 添加字符串的交易品种
);

// 在字符串中搜索子字符串。
int StringFind(
    string string_value,    // 进行搜索的字符串
    string match_substring, // 搜索内容
    int start_pos = 0       // 搜索开始位置
);

// 从字符串指定位置返回交易品种的值。
ushort StringGetCharacter(
    string string_value, // 字符串
    int pos              // 字符串中交易品种位置
);

// 通过指定交易品种初始化一组字符串并提供指定字符串大小。
bool StringInit(
    string &string_var,  // 要初始化的字符串
    int new_len = 0,     // 初始化后所需要的字符串长度
    ushort character = 0 // 填充字符串的交易品种
);

// 在字符串中返回交易品种数字。
int StringLen(
    string string_value // 字符串
);

// 设置一个字符串的指定长度（以字符为单位）。
bool StringSetLength(
    string &string_var, // 字符串
    uint new_length     // 新字符串长度
);

// 通过交易品种集合序列替代字符串发现的所有子字符串。
int StringReplace(
    string &str,             // 子字符串将被替代的字符串
    const string find,       // 搜索的子字符串
    const string replacement // 子字符串将被插入到发现位置
);

// 保留内存中字符串的指定大小缓冲区。
bool StringReserve(
    string &string_var, // 字符串
    uint new_capacity   // 存储字符串的缓冲区大小
);

// 在指定位置上返回字符串上复制的改变字节。
bool StringSetCharacter(
    string &string_var, // 字符串
    int pos,            // 位置
    ushort character    // 字符
);

// 在指定字符串通过指定分隔符得到子字符串，返回所得子字符串的数量
int StringSplit(
    const string string_value, // 字符串搜索
    const ushort separator,    // 被搜索子字符串使用的分隔符
    string *result[]           // 通过引用传递数组得到寻找的子字符串
);

// 子串的摘要从指定位置的文本字符串开始。
string StringSubstr(
    string string_value, // 字符串
    int start_pos,       // 初始位置
    int length = -1      // 提取的字符串的长度
);

// 所选字符串的所有交易品种通过存储单元转变成小写字母。
bool StringToLower(
    string &string_var // 要处理的字符串
);

// 所有选择字符串中的交易品种通过存储单元转换成大写字母。
bool StringToUpper(
    string &string_var // 要处理的字符串
);

// 函数为字符换行，在第一位的实意交易品种后，是字符串左边的字符和标号，字符串适当修改。
int StringTrimLeft(
    string &string_var // 要剪切的字符串
);

// 函数为字符换行，在最后面的实意交易品种后，是字符串右边的字符和标号，字符串适当修改。
int StringTrimRight(
    string &string_var // 要剪切的字符串
);
