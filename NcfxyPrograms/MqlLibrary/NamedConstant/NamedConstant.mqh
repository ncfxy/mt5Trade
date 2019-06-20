#include "../RootInclude.mqh"

// https://www.mql5.com/zh/docs/constants/namedconstants

#define __DATE__      // 文件编译日期，无时间（小时，分钟，秒等于0）

#define __DATETIME__    // 文件编译日期和时间

#define __LINE__    // 源代码中的字符串数量，宏放置的位置

#define __FILE__    // 当前编辑文件的名称

#define __PATH__    // 当前正在编译的文件的绝对路径

#define __FUNCTION__    // 函数名称，宏主体位置

#define __FUNCSIG__ // 宏所在的函数的签名。函数的完整描述记录可用于识别重载函数很

#define __MQLBUILD__  
#define __MQL5BUILD__ // 编译器构造数量


// 数学常量
#define M_E 2.71828182845904523536              // e
#define M_LOG2E 1.44269504088896340736          // log2(e)
#define M_LOG10E 0.434294481903251827651        // log10(e)
#define M_LN2 0.693147180559945309417           // ln(2)
#define M_LN10 2.30258509299404568402           // ln(10)
#define M_PI 3.14159265358979323846             // pi
#define M_PI_2 1.57079632679489661923           // pi/2
#define M_PI_4 0.785398163397448309616          // pi/4
#define M_1_PI 0.318309886183790671538          // 1/pi
#define M_2_PI 0.636619772367581343076          // 2/pi
#define M_2_SQRTPI 1.12837916709551257390       // 2/sqrt(pi)
#define M_SQRT2 1.41421356237309504880          // sqrt(2)
#define M_SQRT1_2 0.707106781186547524401       // 1/sqrt(2)


// 数值类型常量
#define CHAR_MIN -128 // 最小值，可以代表图表类型
#define CHAR_MAX 127 // 最大值，可以代表图表类型
#define UCHAR_MAX 255 // 最大值，可以代表无符字符型
#define SHORT_MIN -32768 // 最小值，可以代表短型
#define SHORT_MAX 32767 // 最大值，可以代表短型
#define USHORT_MAX 65535 // 最大值，可以代表无符号短型
#define INT_MIN -2147483648 // 最小值，可以代表整型
#define INT_MAX 2147483647 // 最大值，可以代表整型
#define UINT_MAX 4294967295 // 最大值，可以代表无符号整型
#define LONG_MIN -9223372036854775808 // 最小值，可以代表长型
#define LONG_MAX 9223372036854775807 // 最大值，可以代表长型
#define ULONG_MAX 18446744073709551615 // 最大值，可以代表无符号长型
#define DBL_MIN 2.2250738585072014e-308 // 最小正值，可以代表双精度型
#define DBL_MAX 1.7976931348623158e+308 // 最大值，可以代表双精度型
#define DBL_EPSILON 2.2204460492503131e-016 // 最小值，满足条件1.0+DBL_EPSILON != 1.0（双精度类型）
#define DBL_DIG 15 // 双精度型有效小数位数字
#define DBL_MANT_DIG 53 // 双精度型尾数算在内的二进制
#define DBL_MAX_10_EXP 308 // 双精度型指数角度最大小数值
#define DBL_MAX_EXP 1024 // 双精度型指数角度最大二进制值
#define DBL_MIN_10_EXP (-307) // 双精度型指数角度最小小数
#define DBL_MIN_EXP (-1021) // 双精度型指数角度最小二进制值
#define FLT_MIN 1.175494351e-38 // 最小正值，能代表浮点类型
#define FLT_MAX 3.402823466e+38 // 最大值，能代表浮点类型
#define FLT_EPSILON 1.192092896e–07 // 最小值，满足因素：1.0+DBL_EPSILON != 1.0 （浮点类型）
#define FLT_DIG 6 // 浮点型有效角度数位
#define FLT_MANT_DIG 24 // 浮点型二进制计算点数
#define FLT_MAX_10_EXP 38 // 浮点型指数角度最大小数值
#define FLT_MAX_EXP 128 // 浮点型最大二进制值
#define FLT_MIN_10_EXP -37 // 浮点型指数角度最小小数值
#define FLT_MIN_EXP (-125) // 浮点型指数角度最小二进制值

//不能初始化原因代码

#define REASON_PROGRAM 0 // 通过调用 ExpertRemove()函数EA交易终止操作
#define REASON_REMOVE 1 // 从图表中删除程序
#define REASON_RECOMPILE 2 // 程序重新编译
#define REASON_CHARTCHANGE 3 // 更改交易品种或图表周期
#define REASON_CHARTCLOSE 4 // 关闭图表
#define REASON_PARAMETERS 5 // 使用者改变输入参数
#define REASON_ACCOUNT 6 // 由于账户设置的改变，会产生激活另一个账户或者重新连接交易服务器的情况。
#define REASON_TEMPLATE 7 // 应用新模板
#define REASON_INITFAILED 8 // 值代表 OnInit()处理器，返回非零值
#define REASON_CLOSE 9 // 程序端已关闭

//检测对象指针

enum ENUM_POINTER_TYPE{
    POINTER_INVALID,    //错误指针
    POINTER_DYNAMIC,    //new() 操作创建的对象指针
    POINTER_AUTOMATIC,    //任意类型对象指针自动创建（不使用new()）
};

// 其他常量
enum ENUM_CRYPT_METHOD{
    CRYPT_BASE64,    //BASE64
    CRYPT_AES128,    //AES 128位密钥加密（16字节）
    CRYPT_AES256,    //AES 256位密钥加密（32 字节）
    CRYPT_DES,    //DES 56位密钥加密（7字节）
    CRYPT_HASH_SHA1,    //SHA1 HASH caculation
    CRYPT_HASH_SHA256,    //SHA256 HASH caculation
    CRYPT_HASH_MD5,    //MD5 HASH 计算
    CRYPT_ARCH_ZIP,    //ZIP 归档
};

#define CHARTS_MAX 100 // 在终端与开仓图表类似的最大可能值
#define clrNONE -1 // 颜色缺乏
#define EMPTY_VALUE DBL_MAX // 指标缓冲区的空值
#define INVALID_HANDLE -1 // 错误处理
#define IS_DEBUG_MODE 调试方式true,否则是false // MQL5程序操作的调试方式标志
#define IS_PROFILE_MODE 分析模式下非零，否则为零 // mq5-program 运作分析模式的标识
#define NULL 0 // 任意类型零值
#define WHOLE_ARRAY -1 // 代表很多条目剩下，直到数组末尾如下，处理全部数组
#define WRONG_VALUE -1 // 常量可以隐藏 计算 传递到任何 枚举 类型数组
