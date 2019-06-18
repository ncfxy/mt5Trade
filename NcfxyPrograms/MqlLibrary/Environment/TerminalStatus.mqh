#include "../RootInclude.mqh"

// https://www.mql5.com/zh/docs/constants/environment_state/terminalstatus

enum ENUM_TERMINAL_INFO_INTEGER
{
    TERMINAL_BUILD,                 //客户端构造编号    int
    TERMINAL_COMMUNITY_ACCOUNT,     //标识表示程序端中存在MQL5.community 授权数据    bool
    TERMINAL_COMMUNITY_CONNECTION,  //连接 MQL5.community    bool
    TERMINAL_CONNECTED,             //连接的交易服务器    bool
    TERMINAL_DLLS_ALLOWED,          //使用DLL许可    bool
    TERMINAL_TRADE_ALLOWED,         //允许交易    bool
    TERMINAL_EMAIL_ENABLED,         //在制定终端允许使用SMTP-server 和 login发送邮件    bool
    TERMINAL_FTP_ENABLED,           //在制定终端允许使用FTP-server 和 login发送报告    bool
    TERMINAL_NOTIFICATIONS_ENABLED, //允许向智能手机发送通知    bool
    TERMINAL_MAXBARS,               //图表中的最大字节    int
    TERMINAL_MQID,                  //标识表示存在MetaQuotes ID 数据 推送通知    bool
    TERMINAL_CODEPAGE,              //在客户端建立的 语言代码页 数字    int
    TERMINAL_CPU_CORES,             //系统的CPU 内核数量    int
    TERMINAL_DISK_SPACE,            //程序端（代理）MQL5\Files 文件夹的空闲磁盘空间，MB    int
    TERMINAL_MEMORY_PHYSICAL,       //系统的物理内存，MB    int
    TERMINAL_MEMORY_TOTAL,          //程序端（代理）进程的可用内存，MB    int
    TERMINAL_MEMORY_AVAILABLE,      //程序端（代理）进程的空闲内存，MB    int
    TERMINAL_MEMORY_USED,           //程序端（代理）使用的内存，MB    int
    TERMINAL_X64,                   //"64-位程序端"    bool
    TERMINAL_OPENCL_SUPPORT,        //OpenCL 支持的版本格式 0x00010002 = 1.2。 "0" 表示OpenCL 不被支持    int
    TERMINAL_SCREEN_DPI,            //屏幕上显示信息的分辨率是以每英寸一行的点数计算的（DPI）。知道该参数值，您可以设置图形对象的大小，以便在不同分辨率的显示器上看起来一样。    int
    TERMINAL_SCREEN_LEFT,           //虚拟屏幕的左坐标。虚拟屏幕是覆盖所有监视器的长方形。如果系统从右至左有两个监视器，那么虚拟屏幕的左坐标可以在两个监视器的边界上。    int
    TERMINAL_SCREEN_TOP,            //虚拟屏幕的顶部坐标    int
    TERMINAL_SCREEN_WIDTH,          //程序端宽度    int
    TERMINAL_SCREEN_HEIGHT,         //程序端高度    int
    TERMINAL_LEFT,                  //相对于虚拟屏幕的程序端的左坐标    int
    TERMINAL_TOP,                   //相对于虚拟屏幕的程序端的顶部坐标    int
    TERMINAL_RIGHT,                 //相对于虚拟屏幕的程序端的右坐标    int
    TERMINAL_BOTTOM,                //相对于虚拟屏幕的程序端的底部坐标    int
    TERMINAL_PING_LAST,             //最后知道的交易服务器的微秒ping值。一秒包含一百万微秒    int
    TERMINAL_VPS,                   //表示程序端在MetaTrader虚拟主机服务器 (MetaTrader VPS)上启动    bool
    //按键标识符,    //描述
    TERMINAL_KEYSTATE_LEFT,     //“左箭头”键状态    int
    TERMINAL_KEYSTATE_UP,       //“向上箭头”键状态    int
    TERMINAL_KEYSTATE_RIGHT,    //“右箭头”键状态    int
    TERMINAL_KEYSTATE_DOWN,     //“向下箭头”键状态    int
    TERMINAL_KEYSTATE_SHIFT,    //“Shift”键状态    int
    TERMINAL_KEYSTATE_CONTROL,  //“Ctrl”键状态    int
    TERMINAL_KEYSTATE_MENU,     //“Windows”键状态    int
    TERMINAL_KEYSTATE_CAPSLOCK, //“CapsLock”键状态    int
    TERMINAL_KEYSTATE_NUMLOCK,  //“NumLock”键状态    int
    TERMINAL_KEYSTATE_SCRLOCK,  //“ScrollLock”键状态    int
    TERMINAL_KEYSTATE_ENTER,    //“Enter”键状态    int
    TERMINAL_KEYSTATE_INSERT,   //“Insert”键状态    int
    TERMINAL_KEYSTATE_DELETE,   //“Delete”键状态    int
    TERMINAL_KEYSTATE_HOME,     //“Home”键状态    int
    TERMINAL_KEYSTATE_END,      //“End”键状态    int
    TERMINAL_KEYSTATE_TAB,      //“Tab”键状态    int
    TERMINAL_KEYSTATE_PAGEUP,   //“PageUp”键状态    int
    TERMINAL_KEYSTATE_PAGEDOWN, //“PageDown”键状态    int
    TERMINAL_KEYSTATE_ESCAPE,   //“Escape”键状态    int
};

enum ENUM_TERMINAL_INFO_DOUBLE
{
    TERMINAL_COMMUNITY_BALANCE, //MQL5.community的结余    双精度
    TERMINAL_RETRANSMISSION,    //对于所有在指定计算机上运行应用程序和服务的TCP/IP协议中的现有网络数据包的百分比。即使在最快且配置正确的网络中也可能发生数据包的丢失。在这种情况下，在接收方与发送方之间没有确认数据包的交付，因此丢失的数据包被重新发送。
                                // 这并不表示特定程序端和交易服务器之间的连接质量，因为这个百分比是为整个网络活动计算，包括系统和后台活动。
                                //  
                                // TERMINAL_RETRANSMISSION值每分钟从操作系统请求一次。 程序端本身并不计算该值。    双精度
};

enum ENUM_TERMINAL_INFO_STRING
{
    TERMINAL_LANGUAGE,        //程序端语言    string
    TERMINAL_COMPANY,         //公司名称    string
    TERMINAL_NAME,            //程序端名称    string
    TERMINAL_PATH,            //程序端文件夹启动    string
    TERMINAL_DATA_PATH,       //程序端数据文件夹存储    string
    TERMINAL_COMMONDATA_PATH, //电脑中所有程序端的普通路径    string
};

int TerminalInfoInteger(
    int property_id // 属性标识符
);

string TerminalInfoString(
    int property_id // 属性标识符
);