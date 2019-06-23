#include "../AllConstants.mqh"

// https://www.mql5.com/zh/docs/array

// 在升序排列的多维数值数组中搜索指定的值。搜索通过第一维度元素执行。
// 搜寻双精度数组
int ArrayBsearch(
    const double array[], // 用来搜索的数组
    double value          // 搜索什么
);

// 搜寻浮点型数组
int ArrayBsearch(
    const float array[], // 用来搜索的数组
    float value          // 搜索什么
);

// 搜寻长整型数组
int ArrayBsearch(
    const long array[], // 用来搜索的数组
    long value          // 搜索什么
);

// 搜寻整型数组
int ArrayBsearch(
    const int array[], // 用来搜索的数组
    int value          // 搜索什么
);

// 搜寻短整型数组
int ArrayBsearch(
    const short array[], // 用来搜索的数组
    short value          // 搜索什么
);

// 搜寻字符型数组
int ArrayBsearch(
    const char array[], // 用来搜索的数组
    char value          // 搜索什么
);

// 复制一组数组到另一组。

int ArrayCopy(
    void *dst_array[],       // 目标数组
    const void *src_array[], // 源数组
    int dst_start = 0,       // 写入目标数组的指数
    int src_start = 0,       // 源数组的最初指数
    int count = WHOLE_ARRAY  // 元素数量
);

// 函数返回相同类型两个数组的比较结果。它可以用来比较简单类型或没有 复杂对象的自定义结构的数组，自定义结构不可以包括 字符串，动态数组，类和其他没有复杂对象的结构。
int ArrayCompare(
    const void *array1[],    // 第一数组
    const void *array2[],    // 第二数组
    uint start1 = 0,         // 第一数组的初始偏差
    uint start2 = 0,         // 第二数组的初始偏差
    uint count = WHOLE_ARRAY // 元素比较的数量
);

// 任何动态数组会空出来缓冲区并建立0维大小
void ArrayFree(
    void *array[] // 数组
);

// 检测数组标引的导向
bool ArrayGetAsSeries(
    const void *array[] // 用于检测的数组
);

// 函数通过预设值初始化一组数字数组。
// 初始化字符型数组
int ArrayInitialize(
    char array[], // 初始化的数组
    char value    // 将被设置的值
);

// 初始化短整型数组
int ArrayInitialize(
    short array[], // 初始化的数组
    short value    // 将被设置的值
);

// 初始化整型数组
int ArrayInitialize(
    int array[], // 初始化的数组
    int value    // 将被设置的值
);

// 初始化长整型数组
int ArrayInitialize(
    long array[], // 初始化的数组
    long value    // 将被设置的值
);

// 初始化浮点型数组
int ArrayInitialize(
    float array[], // 初始化的数组
    float value    // 将被设置的值
);

// 初始化双精度型数组
int ArrayInitialize(
    double array[], // 初始化的数组
    double value    // 将被设置的值
);

// 初始化布尔型数组
int ArrayInitialize(
    bool array[], // 初始化的数组
    bool value    // 将被设置的值
);

// 初始化无符号整型数组

int ArrayInitialize(
    uint array[], // 初始化的数组
    uint value    // 将被设置的值
);

// 以指定值填充数组的函数。
void ArrayFill(
    void *array[], // 数组
    uint start,     // 开始标引
    uint count,     // 填充的元素数量
    void *value    // 值
);

// 判断动态数组的函数。
bool ArrayIsDynamic(
    const void *array[] // 已检测的数组
);

// 检测时间序列数组的函数。
bool ArrayIsSeries(
    const void *array[] // 已经检测的数组
);

// 搜索多维度数值数组的第一维度中的最大元素。
int ArrayMaximum(
    const void *array[],    // 用于搜索的数组
    int start = 0,          // 启动用于检测的指标
    int count = WHOLE_ARRAY // 检测元素数量
);

// 搜索多维度数值数组的第一维度中的最低元素。
int ArrayMinimum(
    const void *array[],    // 用来搜索的数组
    int start = 0,          // 启动用于检测的指标
    int count = WHOLE_ARRAY // 检测元素数量
);

enum ARRAYPRINT
{
    ARRAYPRINT_HEADER,
    ARRAYPRINT_INDEX,
    ARRAYPRINT_LIMIT,
    ARRAYPRINT_ALIGN
};

// 将简单类型或简单结构的数组打印到日志。
void ArrayPrint(
    const void *array[],           // 打印数组
    uint digits = _Digits,          // 小数位数
    const string separator = NULL, // 结构字段值的分隔符
    ulong start = 0,                // 最初打印元素索引
    ulong count = WHOLE_ARRAY,      // 打印元素数量
    ulong flags = ARRAYPRINT_HEADER | ARRAYPRINT_INDEX | ARRAYPRINT_LIMIT | ARRAYPRINT_ALIGN);

// 在所选数组规格中该函数返回元素数字
int ArrayRange(
    const void *array[], // 用于检测的数组
    int rank_index       // 维数
);

// 函数建立新的第一维大小
int ArrayResize(
    void *array[],       // 引用传递的数组
    int new_size,        // 新数组大小
    int reserve_size = 0 // 保留尺寸值 (过量)
);

// 从指定索引开始，将来自源数组的指定元素数量插入到接收数组。
bool ArrayInsert(
    void *dst_array[],       // 接收数组
    const void *src_array[], // 源数组
    uint dst_start,           // 即将插入的接收方数组索引
    uint src_start = 0,       // 即将复制的源数组索引
    uint count = WHOLE_ARRAY  // 即将插入的元素数量
);

// 从指定索引开始移除数组中指定的元素数量。
bool ArrayRemove(
    void *array[],          // 任何类型的数组
    uint start,              // 开始移除的索引
    uint count = WHOLE_ARRAY // 元素数量
);

// 从指定索引开始反转数组中指定的元素数量。
bool ArrayReverse(
    void *array[],          // 任何类型的数组
    uint start = 0,          // 开始反转数组的索引
    uint count = WHOLE_ARRAY // 元素数量
);

// 设置标记到选定的动态数组对象的函数，其元件如时间序列中一样被索引。
bool ArraySetAsSeries(
    const void *array[], // 通过引用的数组
    bool flag            // true表示倒序索引
);

// 函数返回所选数组的元素数量
int ArraySize(
    const void *array[] // 检测的数组
);

// 按升序排列排序多维度数值数组的第一维度中的值。
bool ArraySort(
    void *array[] // 数组排序
);

// 交换相同类型两个动态数组的内容。对于多维数组而言，除了第一个之外，所有维度中的元素数量都应该匹配。
bool ArraySwap(
    void *array1[], //第一个数组
    void *array2[]  //第二个数组
);