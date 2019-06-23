#include "../AllConstants.mqh"

// https://www.mql5.com/zh/docs/files

// 该函数根据指定过滤器启动搜索一个目录下的文件或子目录。
long FileFindFirst(
    const string file_filter,  // 字符串 - 搜寻过滤器
    string &returned_filename, // 找到的文件名或子目录名
    int common_flag = 0        // 定义搜索
);

// 函数继续通过 FileFindFirst()搜索起始位置。
bool FileFindNext(
    long search_handle,       // 搜索处理程序
    string &returned_filename // 找到的文件或子目录的名称
);

// 函数关闭搜索处理。
void FileFindClose(
    long search_handle //  搜索处理程序
);

// 函数打开文件的指定名称和标签。
int FileOpen(
    string file_name,       // 文件名
    int open_flags,         // 标记的组合
    short delimiter = '\t', // 定界符
    uint codepage = CP_ACP  // 代码页
);

// 在客户端中删除本地文件夹的指定文件。
bool FileDelete(
    const string file_name, // 要删除的文件名
    int common_flag = 0     // 要删除的文件位置
);

// 在输入/输出文件缓冲区中编辑所有保留数据到磁盘。
void FileFlush(
    int file_handle // 文件句柄
);

// 获得文件的整型属性。该函数有两个变量。
// 1. 通过文件句柄获得属性。
long FileGetInteger(
    int file_handle,                       // 文件句柄
    ENUM_FILE_PROPERTY_INTEGER property_id // 属性ID
);

// 2. 通过文件名获得属性。
long FileGetInteger(
    const string file_name,                 // 文件名
    ENUM_FILE_PROPERTY_INTEGER property_id, // 属性 ID
    bool common_folder = false              // 文件在本地文件夹查看(false)
);

// 在阅读过程中编辑文件末尾。
bool FileIsEnding(
    int file_handle // 文件句柄
);

// 在阅读过程中定义文本文件的末尾路线。
bool FileIsLineEnding(
    int file_handle // 文件句柄
);

// 通过 FileOpen()关闭先前打开的文件。
void FileClose(
    int file_handle // 文件句柄
);

// 检测文件是否存在。
bool FileIsExist(
    const string file_name, // 文件名
    int common_flag = 0     // 搜索区
);

// 函数从本地或者共享文件中复制原始文件到另一文件中。
bool FileCopy(
    const string src_file_name, // 源文件名称
    int common_flag,            // 位置
    const string dst_file_name, // 目标文件名称
    int mode_flags              // 访问模式
);

// 从本地或共享文件夹中移动文件到另一文件夹。
bool FileMove(
    const string src_file_name, // 进行移动操作的文件名
    int common_flag,            // 位置
    const string dst_file_name, // 目标文件名
    int mode_flags              // 访问模式
);

// 从BIN类型数组的除字符串类型外任意类型中阅读文件（或许是结构数组，不包括字符串，和动态数组）。
uint FileReadArray(
    int file_handle,        // 文件句柄
    void *array[],          // 要记录的数组
    int start = 0,          // 开始编写数组位置
    int count = WHOLE_ARRAY // 读取计数
);

// 从当前位置CSV类型字符串中读取文件到定界符（或者到文本路线的末尾）。
bool FileReadBool(
    int file_handle // 文件句柄
);

// 从CSV类型文件中读取字符串文件格式 "YYYY.MM.DD HH:MI:SS", "YYYY.MM.DD" 或者 "HH:MI:SS"-转换到日期时间值类型。
datetime FileReadDatetime(
    int file_handle // 文件句柄
);

// 从当前二进制文件位置阅读双精度浮点编号（双精度）。
double FileReadDouble(
    int file_handle // 文件句柄
);

// 从当前二进制文件位置阅读双单精度浮点编号（浮点）。
float FileReadFloat(
    int file_handle // 文件句柄
);

// 从当前文件指示位置，函数读取整型，短型或图表型值，取决于规定字节长度。
int FileReadInteger(
    int file_handle,     // 文件句柄
    int size = INT_VALUE // 字节中整数的大小
);

// 从二进制文件当前位置函数读取长型整数（8字节）。
long FileReadLong(
    int file_handle // 文件句柄
);

// 函数从CSV文件字符串中读取当前位置分隔符（或者直到文本字符串末尾）并转变阅读字符串到双精度类型值。
double FileReadNumber(
    int file_handle // 文件句柄
);

// 函数从文件指标当前位置读取字符串。
string FileReadString(
    int file_handle, // 文件句柄
    int length = -1  // 字符串长度
);

// 从二进制文件中函数读取以参量传递的结构，从文件指针的当前仓位开始。
uint FileReadStruct(
    int file_handle,           // 文件句柄
    const void *struct_object, // 读取的目标结构
    int size = -1              // 字节中结构大小
);

// 通过指定仓位相关字节数，函数移动文件指标的仓位。
bool FileSeek(
    int file_handle,          // 文件句柄
    long offset,              // 字节
    ENUM_FILE_POSITION origin // 参考位置
);

// 函数返回文件字节大小。
ulong FileSize(
    int file_handle // 文件句柄
);

// 文件返回打开文件指针的当前仓位。
ulong FileTell(
    int file_handle // 文件句柄
);

// 函数预定给CSV文件录入数据，除非等于0，定界符自动插入，在编辑文件中，添加最后字节线 "\r\n" 。
uint FileWrite(
    int file_handle, // 文件句柄
    ...              // 记录参量的列表
);

// 函数可以编辑除字符串类型外任何类型的数组到BIN文件中（可以是不包含字符串或动态数组的结构数组）。
uint FileWriteArray(
    int file_handle,        // 文件句柄
    const void *array[],    // 数组
    int start = 0,          // 数字中启动索引
    int count = WHOLE_ARRAY // 单元号
);

// 函数编辑双精度参量到文件中，从文件指针的当前仓位开始。
uint FileWriteDouble(
    int file_handle, // 文件句柄
    double value     // 书写值
);

// 函数编辑浮点参量的值到二次文件中，从文件指标当前仓位开始。
uint FileWriteFloat(
    int file_handle, // 文件句柄
    float value      // 被写入的值
);

// 函数编辑整型参量值到二次文件中，从文件指标当前仓位开始。
uint FileWriteInteger(
    int file_handle,     // 文件句柄
    int value,           // 被编写值
    int size = INT_VALUE // 字节大小
);

// 函数编辑长型参量值到二进制文件中，从文件指标当前仓位开始。
uint FileWriteLong(
    int file_handle, // 文件句柄
    long value       // 被写入的值
);

// 该函数编写字符串类型参数的值到文件指针当前位置开始的BIN,CSV或TXT文件。当写下CSV或TXT文件时：如果无之前字符 '\r' (CR)的 '\n' (LF)字符串中有一个交易品种，那么'\n'之前会添加丢失的 '\r' 。
uint FileWriteString(
    int file_handle,          // 文件句柄
    const string text_string, // 要编写的字符串
    int length = -1           // 交易品种数量
);

// 通过传递参量函数编辑二次结构文件目录，从文件指标的当前仓位开始。
uint FileWriteStruct(
    int file_handle,           // 文件句柄
    const void *struct_object, // 连接一个物件
    int size = -1              // 写入字节大小
);

// 指定二进制文件的所有数据读入数值类型或简单结构的传递数组。该函数允许您快速的将已知类型的数据读入相应的数组。
long FileLoad(
    const string file_name, // 文件名
    void *buffer[],         // 数值类型或简单结构的数组
    int common_flag = 0     // 在<data_folder>\MQL5\Files\ by default中搜索的文件标识
);

// 将传递数组所有元素写入二进制文件作为参数。该函数允许您快速编写数值类型或简单结构的数组为一个字符串。
bool FileSave(
    const string file_name, // 文件名
    void *buffer[],         // 数值类型或简单结构的数组
    int common_flag = 0     // 文件标识，默认文件写入<data_folder>\MQL5\Files
);

// 函数在文件目录下新建目录 (依据 common_flag的值 )。
bool FolderCreate(
    string folder_name, // 带有新文件夹名的字符串
    int common_flag = 0 // 范围
);

// 函数删除指定目录，如果文件夹不是空的，就不能被删除。
bool FolderDelete(
    string folder_name, // 带有要删除的文件夹名的字符串
    int common_flag = 0 // 范围
);

// 函数删除指定文件夹中所有文件。
bool FolderClean(
    string folder_name, // 带有已删除的文件夹名的字符串
    int common_flag = 0 // 范围
);
