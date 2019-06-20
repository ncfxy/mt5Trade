#include "../RootInclude.mqh"

// https://www.mql5.com/zh/docs/constants/structures/mqlcalendar

// just to fix error
struct datetime
{
};

// 经济日历结构
// 这部分描述了处理可在MetaTrader平台直接使用的经济日历的结构。经济日历是一个即时可用的百科全书，描述了宏观经济指标、指标发布日期以及重要程度。宏观经济指标的相关值会在发布时立即发送至MetaTrader平台，并以标签的形式显示在图表上，使您可以根据国家、货币和重要性直观地跟踪所需的指标。
// 经济日历函数 可以根据自定义重要性标准，从必要的国家/货币对的角度对传入事件进行自动分析。
// 国家描述通过MqlCalendarCountry结构进行设置。它被用于CalendarCountryById()和 CalendarCountries()函数
struct MqlCalendarCountry 
  { 
   long                               id;                    // 国家ID (ISO 3166-1) 
   string                              name;                  // 国家文本名称（在当前程序端的编码） 
   string                              code;                  // 国家代码名称(ISO 3166-1 alpha-2) 
   string                              currency;              // 国家货币代码 
   string                              currency_symbol;       // 国家货币符号 
   string                              url_name;              // 在mql5.com网站URL中使用的国家名称 
  };

 

// 事件描述通过MqlCalendarEvent结构进行设置。它被用于CalendarEventById()、 CalendarEventByCountry()和 CalendarEventByCurrency()函数

struct MqlCalendarEvent 
  { 
   long                               id;                    // 事件ID 
   ENUM_CALENDAR_EVENT_TYPE            type;                  // 来自ENUM_CALENDAR_EVENT_TYPE枚举的事件类型 
   ENUM_CALENDAR_EVENT_SECTOR          sector;                // 与事件相关的版块 
   ENUM_CALENDAR_EVENT_FREQUENCY       frequency;             //事件频率 
   ENUM_CALENDAR_EVENT_TIMEMODE        time_mode;             //事件时间模式 
   long                               country_id;            // 国家ID 
   ENUM_CALENDAR_EVENT_UNIT            unit;                  // 经济指标价值的度量单位 
   ENUM_CALENDAR_EVENT_IMPORTANCE      importance;            // 事件重要性 
   ENUM_CALENDAR_EVENT_MULTIPLIER      multiplier;            // 事件指标值乘数 
   int                                digits;                // 小数位数 
   string                              source_url;            // 事件发布的源URL 
   string                              event_code;            // 事件代码 
   string                              name;                  // 程序端语言中的事件文本名称（在当前程序端的编码） 
  };

 

// 事件值通过MqlCalendarValue结构进行设置。它被用于CalendarValueById()， CalendarValueHistoryByEvent()， CalendarValueHistory()， CalendarValueLastByEvent()和 CalendarValueLast()函数

struct MqlCalendarValue 
  { 
   long                               id;                    // 值ID 
   long                               event_id;              // 事件ID 
   datetime                            time;                  // 事件时间和日期 
   datetime                            period;                // 事件报告时段 
   int                                 revision;              // 相对于报告时段的已发布指标修正 
   long                                actual_value;          // 指标的实际值 
   long                                prev_value;            // 指标的前值 
   long                                revised_prev_value;    // 指标修正后的前值 
   long                                forecast_value;        // 指标的预测值 
   ENUM_CALENDAR_EVENT_IMPACT          impact_type;           // 对汇率的潜在影响 
  };

//事件频率在MqlCalendarEvent结构中指定。列表中设置了可能的值
  enum ENUM_CALENDAR_EVENT_FREQUENCY{
    CALENDAR_FREQUENCY_NONE,    //发布频率未设置
    CALENDAR_FREQUENCY_WEEK,    //每周发布一次
    CALENDAR_FREQUENCY_MONTH,    //每月发布一次
    CALENDAR_FREQUENCY_QUARTER,    //每季度发布一次
    CALENDAR_FREQUENCY_YEAR,    //每年发布一次
    CALENDAR_FREQUENCY_DAY,    //每天发布一次
};

// 事件类型在MqlCalendarEvent结构中指定。列表中设置了可能的值
enum ENUM_CALENDAR_EVENT_TYPE{
    CALENDAR_TYPE_EVENT,    //事件（会议，讲话等）
    CALENDAR_TYPE_INDICATOR,    //指标
    CALENDAR_TYPE_HOLIDAY,    //假期
};

// 事件相关的经济版块在MqlCalendarEvent结构中指定。列表中设置了可能的值
enum ENUM_CALENDAR_EVENT_SECTOR{
    CALENDAR_SECTOR_NONE,    //版块未设置
    CALENDAR_SECTOR_MARKET,    //市场，交易所
    CALENDAR_SECTOR_GDP,    //国内生产总值 (GDP)
    CALENDAR_SECTOR_JOBS,    //劳动力市场
    CALENDAR_SECTOR_PRICES,    //价格
    CALENDAR_SECTOR_MONEY,    //货币
    CALENDAR_SECTOR_TRADE,    //交易
    CALENDAR_SECTOR_GOVERNMENT,    //政府
    CALENDAR_SECTOR_BUSINESS,    //业务
    CALENDAR_SECTOR_CONSUMER,    //消费
    CALENDAR_SECTOR_HOUSING,    //房屋
    CALENDAR_SECTOR_TAXES,    //税收
    CALENDAR_SECTOR_HOLIDAYS,    //假期
};

// 事件重要性在MqlCalendarEvent结构中指定。列表中设置了可能的值
enum ENUM_CALENDAR_EVENT_IMPORTANCE{
    CALENDAR_IMPORTANCE_NONE,    //重要性未设置
    CALENDAR_IMPORTANCE_LOW,    //低重要性
    CALENDAR_IMPORTANCE_MODERATE,    //中级重要性
    CALENDAR_IMPORTANCE_HIGH,    //高级重要性
};

// 用于显示事件值计量单位类型在MqlCalendarEvent结构中指定。列表中设置了可能的值
enum ENUM_CALENDAR_EVENT_UNIT{
    CALENDAR_UNIT_NONE,    //计量单位未设置
    CALENDAR_UNIT_PERCENT,    //百分比
    CALENDAR_UNIT_CURRENCY,    //国家货币
    CALENDAR_UNIT_HOUR,    //小时
    CALENDAR_UNIT_JOB,    //工作
    CALENDAR_UNIT_RIG,    //钻机设备
    CALENDAR_UNIT_USD,    //美元
    CALENDAR_UNIT_PEOPLE,    //人们
    CALENDAR_UNIT_MORTGAGE,    //抵押贷款
    CALENDAR_UNIT_VOTE,    //投票
    CALENDAR_UNIT_BARREL,    //原油桶数
    CALENDAR_UNIT_CUBICFEET,    //立方英尺
    CALENDAR_UNIT_POSITION,    //非商业净持仓
    CALENDAR_UNIT_BUILDING,    //建筑
};

// 在某些情况下，经济参数值需要在MqlCalendarEvent结构中设置乘数。可能的乘数值设置在列表中
enum ENUM_CALENDAR_EVENT_MULTIPLIER{
    CALENDAR_MULTIPLIER_NONE,    //乘数未设置
    CALENDAR_MULTIPLIER_THOUSANDS,    //数千
    CALENDAR_MULTIPLIER_MILLIONS,    //数百万
    CALENDAR_MULTIPLIER_BILLIONS,    //数十亿
    CALENDAR_MULTIPLIER_TRILLIONS,    //数万亿
};

// 事件对本国汇率的潜在影响在MqlCalendarValue结构中显示。列表中设置了可能的值
enum ENUM_CALENDAR_EVENT_IMPACT{
    CALENDAR_IMPACT_NA,    //影响未设置
    CALENDAR_IMPACT_POSITIVE,    //积极的影响
    CALENDAR_IMPACT_NEGATIVE,    //消极的影响
};

// 事件时间在MqlCalendarEvent结构中指定。列表中设置了可能的值
enum ENUM_CALENDAR_EVENT_TIMEMODE{
    CALENDAR_TIMEMODE_DATETIME,    //源发布事件的确切时间
    CALENDAR_TIMEMODE_DATE,    //事件需要一整天
    CALENDAR_TIMEMODE_NOTIME,    //源不发布事件时间
    CALENDAR_TIMEMODE_TENTATIVE,    //源发布了的是事件一整天而不是确切时间。时间根据事件发生时指定。
};