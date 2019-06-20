#include "../RootInclude.mqh"

// https://www.mql5.com/zh/docs/constants/io_constants


// https://www.mql5.com/zh/docs/constants/io_constants/fileflags
// 文件开始标签
// 文件开始标签指定文件访问方法，标签能如下定义：

#define FILE_READ 1    // 文件只读，使用 FileOpen() 标签。 当打开文件规格需要使用FILE_WRITE 和/或 FILE_READ
#define FILE_WRITE 2    // 文件书写开放，使用 FileOpen() 标签。 当打开文件规格需要使用FILE_WRITE 和/或 FILE_READ
#define FILE_BIN 4    // 二进制阅读/书写模式（不需要转换字符串），使用 FileOpen() 标签
#define FILE_CSV 8    // CSV文件（所有元素转换到恰当的字符串类型，统一编码或者ansi，并被分离器分离）使用 FileOpen() 标签
#define FILE_TXT 16    // 简单文本文件（与CSV文件相同，但不考虑分离器），使用 FileOpen() 标签
#define FILE_ANSI 32    // ANSI类型字符串（一字节交易品种），使用 FileOpen() 标签
#define FILE_UNICODE 64    // UNICODE类型字符串（两字节交易品种），使用 FileOpen() 标签
#define FILE_SHARE_READ 128    // 多个程序共享阅读，使用 FileOpen() 标签, 但是当打开文件时，它不能替代表示 FILE_WRITE和/或FILE_READ 标识的必要性。
#define FILE_SHARE_WRITE 256    // 多个程序分享输入，使用 FileOpen() 标签, 但是当打开文件时，它不能替代表示 FILE_WRITE和/或FILE_READ 标识的必要性。
#define FILE_REWRITE 512    // 使用 FileCopy() 和 FileMove()  函数可以重新输入文件，文件应该在书写时存在或者被打开，否则文件不能打开。
#define FILE_COMMON 4096    // 所有客户端在共同文件夹中的文件路径 \Terminal\Common\Files，使用FileIsExist() 函数中的FileOpen() ， FileCopy() ， FileMove() 标签。

// https://www.mql5.com/zh/docs/constants/io_constants/enum_file_property_integer
enum ENUM_FILE_PROPERTY_INTEGER{
    FILE_EXISTS,    //检查是否存在
    FILE_CREATE_DATE,    //创建日期
    FILE_MODIFY_DATE,    //最近的更改日期
    FILE_ACCESS_DATE,    //最后访问文件的日期
    FILE_SIZE,    //文件的字节大小
    FILE_POSITION,    //文件指针的位置
    FILE_END,    //获取文件结束标志
    FILE_LINE_END,    //获取线型结束标志
    FILE_IS_COMMON,    //在所有程序端共享的文件夹中打开文件 (请见 FILE_COMMON)
    FILE_IS_TEXT,    //文件打开为文本文件 (请见 FILE_TXT)
    FILE_IS_BINARY,    //文件打开为二进制文件 (请见 FILE_BIN)
    FILE_IS_CSV,    //文件打开为 CSV 文件(请见 FILE_CSV)
    FILE_IS_ANSI,    //文件打开为 ANSI 文件(请见 FILE_ANSI)
    FILE_IS_READABLE,    //打开文件为可读文件 (请见 FILE_READ)
    FILE_IS_WRITABLE,    //打开文件为可写入文件 (请见 FILE_WRITE)
};

// https://www.mql5.com/zh/docs/constants/io_constants/enum_file_position
enum ENUM_FILE_POSITION{
    // SEEK_SET,    //文件起点
    // SEEK_CUR,    //文件指针的当前位置
    // SEEK_END,    //文件末尾
};

// https://www.mql5.com/zh/docs/constants/io_constants/codepageusage
#define CP_ACP 0    // 当前窗口ANSI代码页
#define CP_OEMCP 1    // 当前系统OEM代码页
#define CP_MACCP 2    // 当前系统Macintosh代码页。注释：值主要在早期创建的程序代码中使用，现在没有用处了，新的Macintosh电脑使用统一码。
#define CP_THREAD_ACP 3    // 当前线路使用ANSI窗口代码
#define CP_SYMBOL 42    // 交易品种代码页
#define CP_UTF7 65000    // UTF-7代码页
#define CP_UTF8 65001    // UTF-8代码页

// https://www.mql5.com/zh/docs/constants/io_constants/messbconstants
// 对话框常量
// 该章包括返回MessageBox()函数代码。万一已经按下ESC键或者取消按钮，如果消息窗口有取消按钮，函数返回IDCANCEL。如果没有取消按钮，按ESC也不起作用。
#define IDOK 1    // 按“确认”键
#define IDCANCEL 2    // 按“取消”键
#define IDABORT 3    // 按“停止”键
#define IDRETRY 4    // 按“重试”键
#define IDIGNORE 5    // 按“忽略”键
#define IDYES 6    // 按“是”键
#define IDNO 7    // 按“否”键
#define IDTRYAGAIN 10    // 按“再试一次”键
#define IDCONTINUE 11    // 按“继续”键