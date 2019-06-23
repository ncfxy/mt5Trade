#include "../AllConstants.mqh"
#include "./CommonFunctions.mqh"

// https://www.mql5.com/zh/docs/objects

// 在制定图表子窗口中，函数创建指定名称，类型和原坐标物件，在创建期间可以指定到30个坐标。
bool  ObjectCreate( 
   long         chart_id,      // 图表标识符 
   string       name,          // 物件名称 
   ENUM_OBJECT  type,          // 物件类型 
   int          sub_window,    // 窗口索引 
   datetime     time1,         // 第一定位点的时间 
   double       price1,        // 第一定位点的价格 
//    ...
   datetime     timeN=0,       // 第N个定位点的时间 
   double       priceN=0,      //  
//    ... 
   datetime     time30=0,      // 第30个定位点的时间 
   double       price30=0      // 第30个定位点的价格 
   );

// 函数返回指定图表中相关物件名称，在制定子窗口中的指定类型。
string  ObjectName( 
   long  chart_id,           // 图表标识符 
   int   pos,                // 物件列表中的数量 
   int   sub_window=-1,      // 窗口索引 
   int   type=-1             // 物件类型 
   );

// 函数从指定图表中的指定名称里删除物件。
bool  ObjectDelete( 
   long    chart_id,     // 图表标识符 
   string  name          // 物件名称 
   );

// 从指定图表中删除所有物件，指定图表子窗口，指定类型。
int  ObjectsDeleteAll( 
   long  chart_id,           // 图表标识符 
   int   sub_window=-1,      // 窗口索引 
   int   type=-1             // 物件类型 
   );

// 使用对象名称的前缀移除所有指定类型的对象。
int  ObjectsDeleteAll( 
   long           chart_id,   // 图表标识符 
   const string     prefix,   // 对象名称前缀 
   int       sub_window=-1,   // 窗口索引 
   int      object_type=-1    // 对象类型 
   );

// 在图表指定ID中函数搜索指定名称的物件。
int  ObjectFind( 
   long    chart_id,     // 图表标识符 
   string  name          // 物件名称 
   );

// 指定物件的指定价格值，函数返回时间值。
datetime  ObjectGetTimeByValue( 
   long    chart_id,     // 图表标识符 
   string  name,         // 物件名称 
   double  value,        // 价格 
   int     line_id       // 线 
   );

// 函数返回为指定物件指定时间值设定的价格值。
double  ObjectGetValueByTime( 
   long      chart_id,     // 图表标识符 
   string    name,         // 物件名称 
   datetime  time,         // 时间 
   int       line_id       // 线 
   );

// 函数物件定位点的指定坐标。
bool  ObjectMove( 
   long      chart_id,        // 图表标识符 
   string    name,            // 物件名称 
   int       point_index,     // 定位点数 
   datetime  time,            // 时间 
   double    price            // 价格 
   );

// 在指定类型的指定子窗口的指定图表物件中，函数返回物件数量。
int  ObjectsTotal( 
   long  chart_id,           // 图表标识符 
   int   sub_window=-1,      // 窗口索引 
   int   type=-1             // 物件类型 
   );

// 函数返回类似物件属性的返回值，物件属性必须是双精度类型。有2个变量函数可以使用。
// 1. 即时返回属性值。
double  ObjectGetDouble( 
   long                            chart_id,          // 图表标识符 
   string                          name,              // 物件名称 
   ENUM_OBJECT_PROPERTY_DOUBLE     prop_id,           // 属性标识符 
   int                             prop_modifier=0    // 属性修饰符, 如果需要的话 
   );

// 2. 返回 true 或者 false, 取决于函数是否成功。 如果成功，属性值通过上一参量以引用的方式传递安置接收变量。
bool  ObjectGetDouble( 
   long                            chart_id,          // 图表标识符 
   string                          name,              // 物件名称 
   ENUM_OBJECT_PROPERTY_DOUBLE     prop_id,           // 属性标识符 
   int                             prop_modifier,     // 属性修饰符 
   double&                         double_var         // 这里接受属性值 
   );

// 函数返回类似物件属性值，物件属性必须是日期时间，整型，颜色，布尔或者字符 类型。有2个变量函数可以使用。
// 1.即时返回属性值。
long  ObjectGetInteger( 
   long                             chart_id,          // 图表标识符 
   string                           name,              // 物件名称 
   ENUM_OBJECT_PROPERTY_INTEGER     prop_id,           // 属性标识符 
   int                              prop_modifier=0    // 属性修饰符, 如果需要的话 
   );

// 2. 返回 true 或者 false, 取决于函数是否成功。 如果成功，属性值通过上一参量以引用的方式传递安置接收变量。
bool  ObjectGetInteger( 
   long                             chart_id,          // 图表标识符 
   string                           name,              // 物件名称 
   int                              prop_id,           // 属性标识符 
   ENUM_OBJECT_PROPERTY_INTEGER     prop_modifier,     // 属性修饰符 
   long&                            long_var           // 这里接受属性值 
   );

// 函数返回类似物件属性值，物件属性必须是 字符串 类型，有2个变量函数可以使用。
// 1.即时返回属性值。
string  ObjectGetString( 
   long                            chart_id,          // 图表标识符 
   string                          name,              // 物件名称 
   ENUM_OBJECT_PROPERTY_STRING     prop_id,           // 属性标识符 
   int                             prop_modifier=0    // 属性修饰符, 如果需要的话 
   );

// 2. 返回 true 或者 false, 取决于函数是否成功。 如果成功，属性值通过上一参量以引用的方式传递安置接收变量。
bool  ObjectGetString( 
   long                            chart_id,          // 图表标识符 
   string                          name,              // 物件名称 
   ENUM_OBJECT_PROPERTY_STRING     prop_id,           // 属性标识符 
   int                             prop_modifier,     // 属性修饰符 
   string&                         string_var         // 这里接受属性值 
   );

// 函数建立类似物件属性的值。物件数据应该是 双精度 类型，有2中类型函数可供使用。
// 设置属性值，无修饰符
bool  ObjectSetDouble( 
   long                            chart_id,          // 图表标识符 
   string                          name,              // 物件名称 
   ENUM_OBJECT_PROPERTY_DOUBLE     prop_id,           // 属性 
   double                          prop_value         // 值 
   );

// 设置表明修饰符属性值
bool  ObjectSetDouble( 
   long                            chart_id,          // 图表标识符 
   string                          name,              // 物件名称 
   ENUM_OBJECT_PROPERTY_DOUBLE     prop_id,           // 属性 
   int                             prop_modifier,     // 修饰符 
   double                          prop_value         // 值 
   );

// 函数建立类似物件属性值，物件属性一定是日期时间，整型，颜色，布尔或者字符 类型。有2个变量函数可以使用。
// 设置属性值，无修饰符
bool  ObjectSetInteger( 
   long                             chart_id,          // 图表标识符 
   string                           name,              // 物件名称 
   ENUM_OBJECT_PROPERTY_INTEGER     prop_id,           // 属性 
   long                             prop_value         // 值 
   );

// 设置表明修饰符属性值
bool  ObjectSetInteger( 
   long                             chart_id,          // 图表标识符 
   string                           name,              // 物件名称 
   ENUM_OBJECT_PROPERTY_INTEGER     prop_id,           // 属性 
   int                              prop_modifier,     // 修饰符 
   long                             prop_value         // 值 
   );

// 函数建立类似于物件属性的值，物件属性必须是 字符串 类型。有2个变量函数可以使用。
// 设置属性值，无修饰符
bool  ObjectSetString( 
   long                            chart_id,          // 图表标识符 
   string                          name,              // 物件名称 
   ENUM_OBJECT_PROPERTY_STRING     prop_id,           // 属性 
   string                          prop_value         // 值 
   );

// 设置表明修饰符属性值
bool  ObjectSetString( 
   long                            chart_id,          // 图表标识符 
   string                          name,              // 物件名称 
   ENUM_OBJECT_PROPERTY_STRING     prop_id,           // 属性 
   int                             prop_modifier,     // 修饰符 
   string                          prop_value         // 值 
   );

// 该函数使用绘制方法设置展示文本的字体并返回操作结果。默认使用-120 (12 pt)大小的Arial字体。
bool  TextSetFont( 
   const string  name,            // 字体名称或磁盘上字体文件的路径 
   int           size,            // 字体大小 
   uint          flags,           // 混合标识 
   int           orientation=0    // 文本方向 
   );

// 该函数显示自定义数组中的文本（缓冲区）并返回该操作结果。数组是专为创建图形资源而设计的。
bool  TextOut( 
   const string       text,          // 显示的文本 
   int                x,             // X 坐标  
   int                y,             // Y 坐标  
   uint               anchor,        // 定位类型 
   uint               *data[],       // 输出缓冲区 
   uint               width,         // 缓冲区像素宽度 
   uint               height,        // 缓冲区像素高度 
   uint               color,         // 文本颜色 
   ENUM_COLOR_FORMAT  color_format   // 输出的颜色格式 
   );

// 该函数在当前字体设置返回线型宽度和高度。
bool  TextGetSize( 
   const string       text,          // 文本字符串 
   uint&               width,        // 缓冲区像素宽度 
   uint&               height        // 缓冲区像素高度 
   );




