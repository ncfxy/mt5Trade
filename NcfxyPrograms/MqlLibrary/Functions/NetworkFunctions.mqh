#include "../AllConstants.mqh"

// https://www.mql5.com/zh/docs/network

// 创建具有指定标识的套接并返回其句柄。
int SocketCreate(
    uint flags // 标识
);

// 关闭套接。
bool SocketClose(
    const int socket // 套接句柄
);

// 通过超时控制连接到服务器。
bool SocketConnect(
    int socket,             // 套接
    const string server,    // 连接地址
    uint port,              // 连接端口
    uint timeout_receive_ms // 连接超时
);

// 检查套接当前是否已连接。
bool SocketIsConnected(
    const int socket // 套接句柄
);

// 获得可以从套接读取的字节数。
uint SocketIsReadable(
    const int socket // 套接句柄
);

// 为系统套接对象设置数据接收和发送超时。
bool SocketTimeouts(
    int socket,             // 套接
    uint timeout_send_ms,   // 数据发送超时
    uint timeout_receive_ms // 数据获取超时
);

// 从套接读取数据。
int SocketRead(
    int socket,         // 套接
    uchar *buffer[],    // 用于从套接读取数据的缓冲区
    uint buffer_maxlen, // 即将读取的字节数
    uint timeout_ms     // 读取超时
);

// 将数据写入套接。
int SocketSend(
    int socket,            // 套接
    const uchar *buffer[], // 数据缓冲区
    uint buffer_len        // 缓冲区大小
);

// 通过TLS Handshake协议启动与指定主机的安全TLS (SSL)连接。Handshake（交握）过程中，客户和服务器就连接参数达成一致：应用的协议版本和数据加密方法。
bool SocketTlsHandshake(
    int socket,       // 套接
    const string host // 主机地址
);

// 获得用于安全网络连接的证书数据。
int SocketTlsCertificate(
    int socket,          // 套接
    string &subject,     // 证书所有者
    string &issuer,      // 证书发行者
    string &serial,      // 证书序列号
    string &thumbprint,  // 证书打印
    datetime &expiration // 证书到期
);

// 读取来自安全TLS连接的数据。
int SocketTlsRead(
    int socket,        // 套接
    uchar *buffer[],   // 用于从套接读取数据的缓冲区
    uint buffer_maxlen // 即将读取的字节数
);

// 读取来自安全TLS连接的所有可用数据。
int SocketTlsReadAvailable(
    int socket,              // 套接
    uchar *buffer[],         // 用于从套接读取数据的缓冲区
    const uint buffer_maxlen // 即将读取的字节数
);

// 通过安全TLS连接发送数据。
int SocketTlsSend(
    int socket,            // 套接
    const uchar *buffer[], // 数据缓冲区
    uint buffer_len        // 缓冲区大小
);

// 发送 HTTP 请求到指定服务器。 该函数有两个版本：
// 1. 发送简单请求 使用内容-类型标题的"key=value"类型：application/x-www-form-urlencoded
int WebRequest(
    const string method,   // HTTP 请求方式
    const string url,      // url 地址
    const string cookie,   // cookie
    const string referer,  // 参照页
    int timeout,           // 超时
    const char *data[],    // HTTP请求信息数组
    int data_size,         // data[] 数组大小
    char *result[],        // 服务器响应数据数组
    string &result_headers // 服务器响应标头
);

// 2. 发送任何类型的请求 为了各种网络服务的更灵活互动指定自定义的标题设置。
int WebRequest(
    const string method,   // HTTP 方法
    const string url,      // URL
    const string headers,  // 标题
    int timeout,           // 超时
    const char *data[],    // HTTP 信息主体的数组
    char *result[],        // 包含服务器反应数据的数组
    string &result_headers // 服务器响应标题
);

// 在地址中发送文件，指定在Publisher窗口中。
bool SendFTP(
    string filename,       // 通过ftp发送的文件
    string ftp_path = NULL // ftp服务器上传的文件
);

// 在Mailbox建立的窗口中发送指定地址邮件。
bool SendMail(
    string subject,  // 表头
    string some_text // email 文本
);

// 发送推送通知到在“通知”标签指定MetaQuotes ID的移动程序端。
bool SendNotification(
    string text // 通知文本
);