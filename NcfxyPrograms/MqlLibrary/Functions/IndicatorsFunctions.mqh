#include "../AllConstants.mqh"

// https://www.mql5.com/zh/docs/indicators

// 函数在客户端的全局缓存器建立 加速振荡指标并返回处理器，只有一个缓冲区。
int iAC(
    string symbol,         // 交易品种名称
    ENUM_TIMEFRAMES period // 周期
);

// 函数返回累积/分配指标处理器。只有一个缓冲区。
int iAD(
    string symbol,                     // 交易品种名称
    ENUM_TIMEFRAMES period,            // 周期
    ENUM_APPLIED_VOLUME applied_volume // 用于计算的交易量类型
);

// 函数返回平均定向移动指数指标处理器。
int iADX(
    string symbol,          // 交易品种名称
    ENUM_TIMEFRAMES period, // 周期
    int adx_period          // 平均周期
);

// 函数返回韦尔达平均定向移动指数处理器。
int iADXWilder(
    string symbol,          // 交易品种名称
    ENUM_TIMEFRAMES period, // 周期
    int adx_period          // 平均周期
);

// 函数返回鳄鱼指标处理器。
int iAlligator(
    string symbol,                   // 交易品种名称
    ENUM_TIMEFRAMES period,          // 周期
    int jaw_period,                  // 咽喉计算周期
    int jaw_shift,                   // 咽喉平移
    int teeth_period,                // 牙齿计算周期
    int teeth_shift,                 // 牙齿平移
    int lips_period,                 // 唇部计算周期
    int lips_shift,                  // 唇部平移
    ENUM_MA_METHOD ma_method,        // 平滑类型
    ENUM_APPLIED_PRICE applied_price // 价格或者处理器类型
);

// 函数返回适当移动平均指标处理器。只有一个缓冲区。
int iAMA(
    string symbol,                   // 交易品种名称
    ENUM_TIMEFRAMES period,          // 周期
    int ama_period,                  //  AMA平均周期
    int fast_ma_period,              // 快速 MA 周期
    int slow_ma_period,              // 慢速 MA 周期
    int ama_shift,                   // 指标平移
    ENUM_APPLIED_PRICE applied_price // 价格或者处理器类型
);

// 函数返回动量震荡指标处理器。只有一个缓冲区。
int iAO(
    string symbol,         // 交易品种名称
    ENUM_TIMEFRAMES period // 周期
);

// 函数返回平均真实区域指标处理器。只有一个缓冲区。
int iATR(
    string symbol,          // 交易品种名称
    ENUM_TIMEFRAMES period, // 周期
    int ma_period           // 平均周期
);

// 函数返回熊市指标处理器。只有一个缓冲区。
int iBearsPower(
    string symbol,          // 交易品种名称
    ENUM_TIMEFRAMES period, // 周期
    int ma_period           // 平均周期
);

// 函数返回布林带指标处理器。
int iBands(
    string symbol,                   // 交易品种名称
    ENUM_TIMEFRAMES period,          // 周期
    int bands_period,                // 平均线计算周期
    int bands_shift,                 // 指标平移
    double deviation,                // 标准差数
    ENUM_APPLIED_PRICE applied_price // 价格或处理器类型
);

// 函数返回牛市指标处理器。只有一个缓冲区。
int iBullsPower(
    string symbol,          // 交易品种名称
    ENUM_TIMEFRAMES period, // 周期
    int ma_period           // 平均周期
);

// 函数返回顺势指标处理器。只有一个缓冲区。
int iCCI(
    string symbol,                   // 交易品种名称
    ENUM_TIMEFRAMES period,          // 周期
    int ma_period,                   // 平均周期
    ENUM_APPLIED_PRICE applied_price // 价格或处理器类型
);

// 函数返回蔡金摆动指标的处理程序。它只有一个缓冲区。
int iChaikin(
    string symbol,                     // 交易品种名称
    ENUM_TIMEFRAMES period,            // 周期
    int fast_ma_period,                // 快速周期
    int slow_ma_period,                // 慢速周期
    ENUM_MA_METHOD ma_method,          // 平滑类型
    ENUM_APPLIED_VOLUME applied_volume // 交易量类型
);

// 函数返回指定自定义指标的处理器。
int iCustom(
    string symbol,          // 交易品种名称
    ENUM_TIMEFRAMES period, // 周期
    string name             // 文件夹/自定义指标_名称
    ...                     // 指标输入参量列表
);

// 函数返回双指数移动平均线指标处理器。只有一个缓冲区。
int iDEMA(
    string symbol,                   // 交易品种名称
    ENUM_TIMEFRAMES period,          // 周期
    int ma_period,                   // 平均周期
    int ma_shift,                    // 平移
    ENUM_APPLIED_PRICE applied_price // 价格或者处理器类型
);

// 函数返回DeMarker指标处理器。只有一个缓冲区。
int iDeMarker(
    string symbol,          // 交易品种名称
    ENUM_TIMEFRAMES period, // 周期
    int ma_period           // 平均周期
);

// 函数返回轨道线指标处理器。
int iEnvelopes(
    string symbol,                    // 交易品种名称
    ENUM_TIMEFRAMES period,           // 周期
    int ma_period,                    // 平均线计算周期
    int ma_shift,                     // 指标平移
    ENUM_MA_METHOD ma_method,         // 平滑类型
    ENUM_APPLIED_PRICE applied_price, // 价格或者处理器类型
    double deviation                  // 中线边界差(百分率)
);

// 函数返回强力指数指标处理器。只有一个缓冲区。
int iForce(
    string symbol,                     // 交易品种名称
    ENUM_TIMEFRAMES period,            // 周期
    int ma_period,                     // 平均周期
    ENUM_MA_METHOD ma_method,          // 平滑类型
    ENUM_APPLIED_VOLUME applied_volume // 计算的交易量类型
);

// 函数返回分形学指标处理器。
int iFractals(
    string symbol,         // 交易品种名称
    ENUM_TIMEFRAMES period // 周期
);

// 函数返回分形学适合移动平均指标处理器。只有一个缓冲区。
int iFrAMA(
    string symbol,                   // 交易品种名称
    ENUM_TIMEFRAMES period,          // 周期
    int ma_period,                   // 平均周期
    int ma_shift,                    // 图表平移
    ENUM_APPLIED_PRICE applied_price // 价格或者处理器类型
);

// 函数返回鳄鱼振荡器指标处理器。振荡器表示鳄鱼指标蓝线和红线（上升柱状图）的区别以及红线和绿线的区别（下降柱状图）。
int iGator(
    string symbol,                   // 交易品种名称
    ENUM_TIMEFRAMES period,          // 周期
    int jaw_period,                  // 咽喉计算周期
    int jaw_shift,                   // 咽喉平移
    int teeth_period,                // 牙齿计算周期
    int teeth_shift,                 // 牙齿平移
    int lips_period,                 // 唇部计算周期
    int lips_shift,                  // 唇部平移
    ENUM_MA_METHOD ma_method,        // 平滑类型
    ENUM_APPLIED_PRICE applied_price // 价格或者处理器类型
);

// 函数返回一目均衡图指标处理器。
int iIchimoku(
    string symbol,          // 交易品种类型
    ENUM_TIMEFRAMES period, // 周期
    int tenkan_sen,         // Tenkan-sen转换线周期
    int kijun_sen,          // Kijun-sen基准线周期
    int senkou_span_b       // Senkou Span B周期
);

// 函数返回市场便利指标处理器。只有一个缓冲区。
int iBWMFI(
    string symbol,                     // 交易品种类型
    ENUM_TIMEFRAMES period,            // 周期
    ENUM_APPLIED_VOLUME applied_volume // 计算的交易量类型
);

// 函数返回动量指标处理器。只有一个缓冲区。
int iMomentum(
    string symbol,                   // 交易品种名称
    ENUM_TIMEFRAMES period,          // 周期
    int mom_period,                  // 平均周期
    ENUM_APPLIED_PRICE applied_price // 价格或者处理器类型
);

// 函数返回资金流向指标处理器。
int iMFI(
    string symbol,                     // 交易品种名称
    ENUM_TIMEFRAMES period,            // 周期
    int ma_period,                     // 平均周期
    ENUM_APPLIED_VOLUME applied_volume // 计算的交易量类型
);

// 函数返回移动平均数指标处理器。只有一个缓冲区。
int iMA(
    string symbol,                   // 交易品种名称
    ENUM_TIMEFRAMES period,          // 周期
    int ma_period,                   // 平均周期
    int ma_shift,                    // 平移
    ENUM_MA_METHOD ma_method,        // 平滑类型
    ENUM_APPLIED_PRICE applied_price // 价格或者处理程序类型
);

// 函数返回移动平均震荡指标处理器。OsMA振荡器显示MACD与其讯息线之间的区别。只有一个缓冲区。
int iOsMA(
    string symbol,                   // 交易品种名称
    ENUM_TIMEFRAMES period,          // 周期
    int fast_ema_period,             // 快速移动平均数周期
    int slow_ema_period,             // 慢速移动平均数周期
    int signal_period,               // 不同点的平均周期
    ENUM_APPLIED_PRICE applied_price // 价格或者处理器的类型
);

// 函数返回移动平均数聚/散指标处理器。在OsMA被称为MACD柱状图的系统中，该指标显示为两条线。在客户端移动平均数聚/散像柱状图。
int iMACD(
    string symbol,                   // 交易品种名称
    ENUM_TIMEFRAMES period,          // 周期
    int fast_ema_period,             // 快速移动平均数周期
    int slow_ema_period,             // 慢速移动平均数周期
    int signal_period,               // 不同点的平均周期
    ENUM_APPLIED_PRICE applied_price // 价格或者处理器的类型
);

// 函数返回平衡交易量指标处理器。只有一个缓冲区。
int iOBV(
    string symbol,                     // 交易品种名称
    ENUM_TIMEFRAMES period,            // 周期
    ENUM_APPLIED_VOLUME applied_volume // 计算的交易量类型
);

// 函数返回抛物转向系统指标处理器。只有一个缓冲区。
int iSAR(
    string symbol,          // 交易品种名称
    ENUM_TIMEFRAMES period, // 周期
    double step,            // 逐步增加
    double maximum          // 最大止损水平
);

// 函数返回相对强度指数指标处理器。只有一个缓冲区。
int iRSI(
    string symbol,                   // 交易品种类型
    ENUM_TIMEFRAMES period,          // 周期
    int ma_period,                   // 平均周期
    ENUM_APPLIED_PRICE applied_price // 价格或者处理器类型
);

// 函数返回相对活力指数指标处理器。
int iRVI(
    string symbol,          // 交易品种名称
    ENUM_TIMEFRAMES period, // 周期
    int ma_period           // 平均周期
);

// 函数返回标准偏差指标处理器。只有一个缓冲区。
int iStdDev(
    string symbol,                   // 交易品种名称
    ENUM_TIMEFRAMES period,          // 周期
    int ma_period,                   // 平均周期
    int ma_shift,                    // 平移
    ENUM_MA_METHOD ma_method,        // 平滑类型
    ENUM_APPLIED_PRICE applied_price // 价格或者处理器类型
);

// 函数返回随机摆动指标处理器。
int iStochastic(
    string symbol,             // 交易品种名称
    ENUM_TIMEFRAMES period,    // 周期
    int Kperiod,               // K线周期 (用于计算的柱数)
    int Dperiod,               // D线周期 (开始平滑周期)
    int slowing,               // 最终平滑
    ENUM_MA_METHOD ma_method,  // 平滑类型
    ENUM_STO_PRICE price_field // 随机计算法
);

// 函数返回三倍指数移动平均指标处理器。只有一个缓冲区。
int iTEMA(
    string symbol,                   // 交易品种名称
    ENUM_TIMEFRAMES period,          // 周期
    int ma_period,                   // 平均周期
    int ma_shift,                    // 指标平移
    ENUM_APPLIED_PRICE applied_price // 价格或者处理器类型
);

// 函数返回三倍指数移动平均数振荡指标处理器。只有一个缓冲区。
int iTriX(
    string symbol,                   // 交易品种名称
    ENUM_TIMEFRAMES period,          // 周期
    int ma_period,                   // 平均周期
    ENUM_APPLIED_PRICE applied_price // 价格或者处理器类型
);

// 函数返回威廉指数指标。只有一个缓冲区。
int iWPR(
    string symbol,          // 交易品种名称
    ENUM_TIMEFRAMES period, // 周期
    int calc_period         // 平均周期
);

// 函数返回变量指数动态平均数指标处理器。只有一个缓冲区。
int iVIDyA(
    string symbol,                   // 交易品种名称
    ENUM_TIMEFRAMES period,          // 周期
    int cmo_period,                  // Chande 动量指标周期
    int ema_period,                  // EMA 平滑周期
    int ma_shift,                    // 价格图表平移
    ENUM_APPLIED_PRICE applied_price // 价格或者处理器类型
);

// 函数返回交易量指标处理器。只有一个缓冲区。
int iVolumes(
    string symbol,                     // 交易品种名称
    ENUM_TIMEFRAMES period,            // 周期
    ENUM_APPLIED_VOLUME applied_volume // 计算的交易量类型
);
