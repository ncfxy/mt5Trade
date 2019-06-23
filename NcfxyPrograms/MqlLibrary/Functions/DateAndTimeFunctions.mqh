#include "../AllConstants.mqh"

// https://www.mql5.com/zh/docs/dateandtime

// 返回最后访问的服务器时间，最后在"市场报价"窗口中选择交易品种接收的引用时间。在 OnTick() 处理器中，函数返回接收的处理器时间。在其他情况下（例如，调用 handlers OnInit(), OnDeinit(), OnTimer()等等），对于在 "市场报价"窗口中的交易品种常量有 最后一个报价收据时间，时间在窗口标题上显示。时间值在交易服务器上形成并不能依靠时间设置电脑。有两种变量函数。
// 无参量调用
datetime TimeCurrent();

// 返回最后访问的服务器时间，最后在"市场报价"窗口中选择交易品种接收的引用时间。在 OnTick() 处理器中，函数返回接收的处理器时间。在其他情况下（例如，调用 handlers OnInit(), OnDeinit(), OnTimer()等等），对于在 "市场报价"窗口中的交易品种常量有 最后一个报价收据时间，时间在窗口标题上显示。时间值在交易服务器上形成并不能依靠时间设置电脑。有两种变量函数。
// 调用MqlDateTime类型参量
datetime TimeCurrent(
    MqlDateTime &dt_struct // 结构类型变量
);

// 返回交易服务器计算出的当前时间，不像TimeCurrent()，时间值的计算在客户端中执行并依据电脑里的时间设置。有两种常量函数。
// 无参量调用

datetime TimeTradeServer();

// 返回交易服务器计算出的当前时间，不像TimeCurrent()，时间值的计算在客户端中执行并依据电脑里的时间设置。有两种常量函数。
// 调用MqlDateTime类型参量
datetime TimeTradeServer(
    MqlDateTime &dt_struct // 结构类型变量
);

// 返回客户端运行时电脑上的当地时间，有两种变量函数。
// 无参量调用
datetime TimeLocal();

// 返回客户端运行时电脑上的当地时间，有两种变量函数。
// 调用MqlDateTime类型参量
datetime TimeLocal(
    MqlDateTime &dt_struct // 结构类型变量
);

// 返回GMT，该计算考虑到当客户端运行时电脑上当地时间的DST转换，有两种变量函数。
// 无参量调用
datetime TimeGMT();

// 返回GMT，该计算考虑到当客户端运行时电脑上当地时间的DST转换，有两种变量函数。
// 调用MqlDateTime类型参量
datetime TimeGMT(
    MqlDateTime &dt_struct // 结构类型变量
);

// 返回以秒为单位的正确时间，转变成夏季时间，取决于电脑上的时间设置。

int TimeDaylightSavings();

// 返回在GMT时间和当前电脑之间的不同，考虑到转换成冬季或者夏季时间，取决于电脑上设置的时间。

int TimeGMTOffset();

// 转变时间类型值（数字从1970.01.01以秒开始）到结构变量 MqlDateTime 中。

bool TimeToStruct(
    datetime dt,           // 日期和时间
    MqlDateTime &dt_struct // 采用值的结构
);

// 转变结构变量 MqlDateTime 到 日期时间 类型值，然后返回结果值。

datetime StructToTime(
    MqlDateTime &dt_struct // 日期和时间结构
);
