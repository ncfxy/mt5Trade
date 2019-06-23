#include "../AllConstants.mqh"

// https://www.mql5.com/zh/docs/calendar

// 根据ID获得国家描述。
bool CalendarCountryById(
    const long country_id,      //国家 ID
    MqlCalendarCountry &country // 用于接收国家描述的变量
);

// 根据ID获得事件描述。
bool CalendarEventById(
    ulong event_id,         // 事件ID
    MqlCalendarEvent &event // 用于接收事件描述的变量
);

// 根据ID获得事件值描述。
bool CalendarValueById(
    ulong value_id,         // 事件值ID
    MqlCalendarValue &value // 用于接收事件值的变量
);

// 获得“日历”中可用的国家名称数组。
int CalendarCountries(
    MqlCalendarCountry *countries[] // 用于接收“日历”国家描述列表的数组
);

// 根据指定国家代码获得日历中可用的所有事件描述数组。
int CalendarEventByCountry(
    string country_code,       // 国家代码名称(ISO 3166-1 alpha-2)
    MqlCalendarEvent *events[] //用于接收描述数组的变量
);

// 根据指定货币获得日历中可用的所有事件描述数组。
int CalendarEventByCurrency(
    const string currency,     // 国家货币代码名称
    MqlCalendarEvent *events[] // 用于接收描述数组的变量
);

// 根据事件ID获得指定时期的所有事件值数组。
bool CalendarValueHistoryByEvent(
    ulong event_id,             // 事件ID
    MqlCalendarValue *values[], // 值描述数组
    datetime datetime_from,     // 时间范围的左边框
    datetime datetime_to = 0    // 时间范围的右边框
);

// 通过根据国家和/或货币进行排序的能力，获得指定时期的所有事件值数组。
bool CalendarValueHistory(
    MqlCalendarValue *values[],       // 值描述数组
    datetime datetime_from,           // 时间范围的左边框
    datetime datetime_to = 0,         //时间范围的右边框
    const string country_code = NULL, // 国家代码名称(ISO 3166-1 alpha-2)
    const string currency = NULL      // 国家货币代码名称
);

// 通过指定change_id，从日历数据库状态根据ID获得事件值数组。
int CalendarValueLastByEvent(
    ulong event_id,            // 事件ID
    ulong &change_id,          // 事件值ID
    MqlCalendarValue *values[] // 值描述数组
);

// 通过指定change_id和根据国家和/或货币进行排序的能力，从日历数据库状态获得所有事件值数组。
int CalendarValueLast(
    ulong &change_id,                 // 更改ID
    MqlCalendarValue *values[],       // 值描述数组
    const string country_code = NULL, // 国家代码名称(ISO 3166-1 alpha-2)
    const string currency = NULL      // 国家货币代码名称
);
