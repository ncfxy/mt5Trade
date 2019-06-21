#include "../AllConstants.mqh"

// https://www.mql5.com/zh/docs/math

// 函数返回特定数值的绝对值（绝对值）
double  MathAbs( 
   double  value      // 数值 
   );

// 函数在0到π弧度返回x。
double  MathArccos( 
   double  val     // -1<val<1 
   );

// 函数余弦x在-π/2 到 π/2范围之内
double  MathArcsin( 
   double  val      // -1<值<1 
   );

// 函数返回反正切x，如果x等于0，函数返回0
double  MathArctan( 
   double  value      // 正切 
   );

// 函数从上返回最接近的整数值。
double  MathCeil( 
   double  val      // 数字 
   );

// 函数返回余弦角。
double  MathCos( 
   double  value      // 数字 
   );


// 函数返回e到d的值。
double  MathExp( 
   double  value      // 数字e的功能 
   );

// 函数返回下面最接近的整数值。
double  MathFloor( 
   double  val     // 数字 
   );

// 函数返回一组自然对数。
double  MathLog( 
   double  val      // 取对数的数值 
   );

// 以10为底返回对数。
double  MathLog10( 
   double  val      // 取对数的数值 
   );

// 函数返回最大的量个值。
double  MathMax( 
   double  value1,     // 第一值 
   double  value2      // 第二值 
   );

// 函数返回两个值中的最小值。
double  MathMin( 
   double  value1,     // 第一值 
   double  value2      // 第二值 
   );

// 函数返回两个数字相除的余数。
double  MathMod( 
   double  value,      // 股息值 
   double  value2      // 除数值 
   );

// 函数增加基数的整个功率。
double  MathPow( 
   double  base,         // 基数  
   double  exponent      // 指数值 
   );

// 在0到32767之间返回随机整数。
int  MathRand();

// 函数四舍五入返回最接近的整数值。
double  MathRound( 
   double  value      // 全值 
   );

// 返回特定角的正弦。
double  MathSin( 
   double  value      // 弧度参数 
   );

// 返回数字的平方根。
double  MathSqrt( 
   double  value      // 正值 
   );

// 建立伪随机整数产生序列出发点。
void  MathSrand( 
   int  seed      // 初始化数字 
   );

// 函数返回正切数。
double  MathTan( 
   double  rad      // 弧度参数 
   );

// 检测实数的正确性。
bool  MathIsValidNumber( 
   double  number      // 检测数 
   );

// 返回MathExp(x)-1表达式值。
double  MathExp1( 
   double  value      // 数值e的能力 
   );

// 返回MathLog(1+x)表达式值。
double  MathLog1p( 
   double  value      // 对数值 
   );

// 返回双曲反余弦。
double  MathArccosh( 
   double  value     // 1 <= 值< ∞ 
   );

// 返回双曲反正弦。
double  MathArcsinh( 
   double  value      // -∞ < 值 < +∞ 
   );

// 返回双曲反正切。
double  MathArctanh( 
   double  value      // 值的范围 -1 < 值 < 1 
   );


// 返回数值的双曲余弦。
double  MathCosh( 
   double  value      // 数值 
   );

// 返回数值的双曲正弦。
double  MathSinh( 
   double  value      // 数值 
   );

// 返回数值的双曲正切。
double  MathTanh( 
   double  value      // 数值 
   );

// 在ushort类型值中改变字节的顺序
ushort  MathSwap( 
   ushort  value      //值 
   );

// 在uint类型值中改变字节的顺序。
uint  MathSwap( 
   uint   value      // 值 
   );

// 在ulong类型值中改变字节的顺序。
ulong  MathSwap( 
   ulong  value      //值 
   );