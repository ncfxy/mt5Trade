#include "../AllConstants.mqh"

// https://www.mql5.com/zh/docs/opencl

enum ENUM_OPENCL_HANDLE_TYPE
{
    OPENCL_INVALID, // 不正确处理
    OPENCL_CONTEXT, // OpenCL背景处理
    OPENCL_PROGRAM, // OpenCL程序处理
    OPENCL_KERNEL,  // OpenCL内核处理
    OPENCL_BUFFER   // OpenCL缓冲处理
};

// 返回OpenCL处理类型作为 ENUM_OPENCL_HANDLE_TYPE 详表中的某个值.
ENUM_OPENCL_HANDLE_TYPE CLHandleType(
    int handle // OpenCL对象处理
);

enum ENUM_OPENCL_PROPERTY_INTEGER
{
    CL_DEVICE_COUNT,               //OpenCL支持的设备编号. 此属性不要求第一个参数规范，即你可以处理参数通过一个为零的值    int
    CL_DEVICE_TYPE,                //设备类型    ENUM_CL_DEVICE_TYPE
    CL_DEVICE_VENDOR_ID,           //唯一的供应商识别    uint
    CL_DEVICE_MAX_COMPUTE_UNITS,   //OpenCL设备中的并行计算任务编号. 一个工作组解决了一个计算任务.最低值为1    uint
    CL_DEVICE_MAX_CLOCK_FREQUENCY, //设备最高的固定频率兆赫.    uint
    CL_DEVICE_GLOBAL_MEM_SIZE,     //设备的全局内存字节大小    ulong
    CL_DEVICE_LOCAL_MEM_SIZE,      //处理数据（事件）本地内存的字节大小    uint
    CL_BUFFER_SIZE,                //OpenCL字节缓冲区的实际大小    ulong
    CL_DEVICE_MAX_WORK_GROUP_SIZE, //可用于OpenCL设备的本地工作组总数。    ulong
    CL_KERNEL_WORK_GROUP_SIZE,     //可用于OpenCL程序的本地工作组总数。    ulong
    CL_KERNEL_LOCAL_MEM_SIZE,      //由OpenCL程序用于解决一组全部并行任务的本地存储器大小（字节）。 使用CL_DEVICE_LOCAL_MEM_SIZE 接收最大可用值    ulong
    CL_KERNEL_PRIVATE_MEM_SIZE,    //OpenCL程序内核中，每个任务使用的最小专有存储器大小（字节）。    ulong
};

enum ENUM_CL_DEVICE_TYPE
{
    CL_DEVICE_ACCELERATOR, //OpenCL专用加速器 (比如, IBM CELL Blade). 这些设备使用外设互连如PCIe与主处理器进行通信.
    CL_DEVICE_CPU,         //一个OpenCL主机处理器设备. 主机处理器运行OpenCL运转且为一个单核或多核CPU.
    CL_DEVICE_GPU,         //一个OpenCL设备是GPU.
    CL_DEVICE_DEFAULT,     //系统默认的OpenCL设备. 默认设备不能为 CL_DEVICE_TYPE_CUSTOM 设备.
    CL_DEVICE_CUSTOM,      //专用的加速器不支持OpenCL C编写的程序.
};

// 为一个OpenCL对象或者设备返回整数属性的数值.
long CLGetInfoInteger(
    int handle,                       // OpenCL对象处理或OpenCL设备编号
    ENUM_OPENCL_PROPERTY_INTEGER prop // 被请求属性
);

// 创建一个OpenCL背景并返回其处理.
int CLContextCreate(
    int device // OpenCL设备或宏的序列号
);

// 删除一个OpenCL背景.
void CLContextFree(
    int context // 处理一个OpenCL背景
);

// 函数从OpenCL驱动器接收设备的性能.
bool CLGetDeviceInfo(
    int handle,      // OpenCL设备处理
    int property_id, // 被请求的属性 ID
    uchar *data[],   // 数据接收数组
    uint &size       // 数组中的元素转换，默认为0
);

// 从源代码创建一个OpenCL程序.
int CLProgramCreate(
    int context,        // 处理一个OpenCL背景
    const string source // 源代码
);

// 删除一个OpenCL程序.
void CLProgramFree(
    int program // 处理一个OpenCL对象
);

// 创建OpenCL程序内核并返回其处理.
int CLKernelCreate(
    int program,             // 处理一个OpenCL对象
    const string kernel_name // 内核名称
);

// 删除一个OpenCL启动函数.
void CLKernelFree(
    int kernel // 处理一个OpenCL程序内核
);

// 为OpenCL函数设置一个参数.
bool CLSetKernelArg(
    int kernel,     // 处理一个OpenCL程序内核
    uint arg_index, // OpenCL函数幅角的数量
    void *arg_value // 源代码
);

// 设置一个OpenCL缓冲作为OpenCL函数的参数.
bool CLSetKernelArgMem(
    int kernel,       // 处理一个OpenCL程序的内核
    uint arg_index,   // OpenCL函数参数的数量
    int cl_mem_handle // 处理一个OpenCL缓冲
);

// 设置本地缓冲区作为内核函数参数。
bool CLSetKernelArgMemLocal(
    int kernel,          // 处理OpenCL程序的内核
    uint arg_index,      // OpenCL函数参数的数值
    ulong local_mem_size // 缓冲区大小
);

// 创建一个OpenCL缓冲并返回其操作.
int CLBufferCreate(
    int context, // 处理一个OpenCL背景
    uint size,   // 缓冲大小
    uint flags   // 指定OpenCL缓冲性能的标志组合
);

// 删除OpenCL缓冲.
void CLBufferFree(
    int buffer // 处理一个OpenCL缓冲
);

// 写入OpenCL缓冲区以及返回写入元素的个数.
uint CLBufferWrite(
    int buffer,                   // 处理一个OpenCL缓冲
    const void *data[],           // 值的数组
    uint buffer_offset = 0,       // 字节区偏移的OpenCL缓冲，默认为0
    uint data_offset = 0,         // 元素中数组的偏移，默认为0
    uint data_count = WHOLE_ARRAY // 从阵列写入的值的数量，默认整个阵列
);

// 读取一个 OpenCL缓冲到一个数组并且返回读元件的数量.
uint CLBufferRead(
    int buffer,                   // 处理一个OpenCL缓冲
    const void *data[],           // 一个值的数组
    uint buffer_offset = 0,       // 在字节缓冲区偏移的OpenCL，默认为0
    uint data_offset = 0,         // 在元素的数组的偏移量，默认为0
    uint data_count = WHOLE_ARRAY // 用于读取的缓冲值的个数，默认为整个缓冲区
);

// 此函数运行一个 OpenCL程序。有三个版本的函数：
// 1. 用一个内核启动内核函数
bool CLExecute(
    int kernel // 处理一个OpenCL程序的内核
);

// 2. 启动几个内核副本 (OpenCL函数) 与任务空间描述
bool CLExecute(
    int kernel,                       // 处理一个OpenCL程序的内核
    uint work_dim,                    // 任务空间维度
    const uint *global_work_offset[], // 在任务空间初始偏移
    const uint *global_work_size[]    // 任务总数
);

// 3. 启动几个内核副本 (OpenCL函数) 与任务空间描述以及集合本地任务子集大小规范
bool CLExecute(
    int kernel,                       // 处理一个OpenCL程序的内核
    uint work_dim,                    // 任务空间维度
    const uint *global_work_offset[], // 在任务空间初始偏移
    const uint *global_work_size[],   // 任务总数
    const uint *local_work_size[]     // 在本地集合中的任务数
);

// 返回OpenCL程序执行状态。
int CLExecutionStatus(
    int kernel // 处理OpenCL程序的内核
);
