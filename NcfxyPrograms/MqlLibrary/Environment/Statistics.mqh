#include "../RootInclude.mqh"

// https://www.mql5.com/zh/docs/constants/environment_state/statistics

enum ENUM_STATISTICS{
    STAT_INITIAL_DEPOSIT,    //初始存款的值	double
    STAT_WITHDRAWAL,    //从账户取款	double
    STAT_PROFIT,    //测试后的净利润，STAT_GROSS_PROFIT 和 STAT_GROSS_LOSS 的总和(STAT_GROSS_LOSS 始终小于或等于0)	double
    STAT_GROSS_PROFIT,    //总利润，所有获利（正值）交易的总和。该值大于或等于0	double
    STAT_GROSS_LOSS,    //总亏损，所有负值交易的总和。该值小于或等于0	double
    STAT_MAX_PROFITTRADE,    //最大收益 – 所有获利交易中的最大值。该值大于或等于0	double
    STAT_MAX_LOSSTRADE,    //最大亏损 – 所有亏损交易中的最低值。该值小于或等于0	double
    STAT_CONPROFITMAX,    //一组获利交易中的最大收益。该值大于或等于0	double
    STAT_CONPROFITMAX_TRADES,    //已经形成STAT_CONPROFITMAX (一组获利交易中的最大收益)的交易的数量	int
    STAT_MAX_CONWINS,    //最长的一组获利交易的总利润	double
    STAT_MAX_CONPROFIT_TRADES,    //最长的一组获利交易中的交易数量 STAT_MAX_CONWINS	int
    STAT_CONLOSSMAX,    //一组亏损交易中的最大亏损。该值小于或等于0	double
    STAT_CONLOSSMAX_TRADES,    //已经形成 STAT_CONLOSSMAX (一组亏损交易中的最大亏损)的交易的数量	int
    STAT_MAX_CONLOSSES,    //最长一组亏损交易的总亏损	double
    STAT_MAX_CONLOSS_TRADES,    //最长的一组亏损交易中的交易数量 STAT_MAX_CONLOSSES	int
    STAT_BALANCEMIN,    //结余的最小值	double
    STAT_BALANCE_DD,    //以货币计算，最大的结余跌幅。在交易处理过程中，结余可能有大幅度下跌，这里采用最大的值	double
    STAT_BALANCEDD_PERCENT,    //以百分比计算结余下跌，记录于货币计算的最大结余跌幅的时期 (STAT_BALANCE_DD)。	double
    STAT_BALANCE_DDREL_PERCENT,    //以百分比计算最大结余跌幅。在交易处理过程中，结余可能有大幅度下跌，每次相关的下跌值都以百分比计算返回最大的值	double
    STAT_BALANCE_DD_RELATIVE,    //以货币计算结余下跌，记录于百分比计算的最大结余跌幅时期 (STAT_BALANCE_DDREL_PERCENT)。	double
    STAT_EQUITYMIN,    //最小净值	double
    STAT_EQUITY_DD,    //以货币计算，最大的净值跌幅。在交易处理过程中，净值上可能出现大幅度下跌，这里采用最大的值	double
    STAT_EQUITYDD_PERCENT,    //以百分比计算下跌，记录于货币计算的最大净值跌幅的时期 (STAT_EQUITY_DD)。	double
    STAT_EQUITY_DDREL_PERCENT,    //以百分比计算最大净值跌幅。在交易处理过程中，净值可能有大幅度下跌，每次相关的下跌值都以百分比计算返回最大的值	double
    STAT_EQUITY_DD_RELATIVE,    //以货币计算净值下跌，记录于百分比计算的最大净值跌幅时期(STAT_EQUITY_DDREL_PERCENT)。	double
    STAT_EXPECTED_PAYOFF,    //期望收益	double
    STAT_PROFIT_FACTOR,    //利润因子，等于STAT_GROSS_PROFIT/STAT_GROSS_LOSS比率。如果STAT_GROSS_LOSS=0, 利润因子就等于 DBL_MAX	double
    STAT_RECOVERY_FACTOR,    //采收率，等于 STAT_PROFIT/STAT_BALANCE_DD的比率	double
    STAT_SHARPE_RATIO,    //夏普比率	double
    STAT_MIN_MARGINLEVEL,    //保证金水平的最小值	double
    STAT_CUSTOM_ONTESTER,    //计算的自定义优化标准的值通过 OnTester() 函数返回unction	double
    STAT_DEALS,    //成交数量	int
    STAT_TRADES,    //交易的数量	int
    STAT_PROFIT_TRADES,    //获利交易	int
    STAT_LOSS_TRADES,    //亏损交易	int
    STAT_SHORT_TRADES,    //卖出交易	int
    STAT_LONG_TRADES,    //买入交易	int
    STAT_PROFIT_SHORTTRADES,    //获利的卖出交易	int
    STAT_PROFIT_LONGTRADES,    //获利的买入交易	int
    STAT_PROFITTRADES_AVGCON,    //一组获利交易的平均长度	int
    STAT_LOSSTRADES_AVGCON    //一组亏损交易的平均长度	int
};