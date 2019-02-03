#include <conio.h>
#include <malloc.h>
#include <stdio.h>
#include <stdlib.h>
#include <windows.h>

// 显示字符串 szPrompt 并等待用户按下任意键（在程序最后使用） 
#define Pause( szPrompt ) printf( "%s", szPrompt ),getch()

typedef struct carinformation    // 车辆信息
{
 char szRegistrationMark[64];   // 车牌号
 char szArrivalTime[16];    // 到达时间
 char szEntranceTime[16];   // 进入停车场(开始计费)时间
 char szDepartureTime[16];   // 离开时间
} TCARINFORMATION, *LPTCARINFORMATION;

//构建一个站 
typedef struct carstack
{
 LPTCARINFORMATION lpCarInformation;  // 车辆信息  
 int nTop;     // 栈顶元素下标
 int nStackSize;     // 栈容量
} TCARSTACK, *LPTCARSTACK;


// 初始化栈 lpCarStack, 将其容量设置为 nSize 
void InitStack( LPTCARSTACK &lpCarStack, int nSize )
{
 lpCarStack = ( LPTCARSTACK ) malloc( sizeof ( TCARSTACK ) );
 lpCarStack->lpCarInformation = ( LPTCARINFORMATION ) malloc(
  nSize * sizeof ( TCARINFORMATION )
  );
 lpCarStack->nTop = -1;
 lpCarStack->nStackSize = nSize;
}


// 车辆信息 carinfo 入栈 lpCarStack
void Push( LPTCARSTACK &lpCarStack, TCARINFORMATION carinfo )
{
 lpCarStack->nTop++;
 lpCarStack->lpCarInformation[lpCarStack->nTop] = carinfo;
}


// 车辆信息从栈 lpCarStack 中弹出并存入 carinfo
void Pop( LPTCARSTACK &lpCarStack, TCARINFORMATION &carinfo )
{
 carinfo = lpCarStack->lpCarInformation[lpCarStack->nTop];
 lpCarStack->nTop--;
}


// 若栈 lpCarstack 空,返回 TRUE;否则,返回 FALSE
BOOL IsStackEmpty( LPTCARSTACK lpCarStack )
{
 return lpCarStack->nTop == -1;
}


// 若栈 lpStackFull 满,返回 TRUE;否则,返回 FALSE
BOOL IsStackFull( LPTCARSTACK lpCarStack )
{
 return lpCarStack->nTop == ( lpCarStack->nStackSize - 1 );
}


// 销毁栈 lpCarStack,将指针 lpCarStack 置为 NULL
void DestroyStack( LPTCARSTACK &lpCarStack )
{
 free( lpCarStack->lpCarInformation );
 free( lpCarStack );
 lpCarStack = NULL;
}


typedef struct carnode     // 链队结点信息
{
 TCARINFORMATION carinfo;   // 车辆信息
 struct carnode *lpNext;    // 指向下一个元素的指针
} TCARNODE, *LPTCARNODE;


typedef struct carqueue     // 链队
{
 LPTCARNODE lpHead;    // 头结点
 LPTCARNODE lpRear;    // 指向当前队尾的指针
 int nEffectiveSize;    // 当前队中元素个数
} TCARQUEUE, *LPTCARQUEUE;


// 初始化链队 lpCarQueue
void InitQueue( LPTCARQUEUE &lpCarQueue )
{
 lpCarQueue = ( LPTCARQUEUE ) malloc( sizeof( TCARQUEUE ) );
 lpCarQueue->lpHead = ( LPTCARNODE) malloc( sizeof( TCARNODE ) );
 lpCarQueue->lpHead->lpNext = NULL;
 lpCarQueue->lpRear = lpCarQueue->lpHead;
 lpCarQueue->nEffectiveSize = 0;
}


// 车辆信息 carinfo 入队 lpCarQueue
void EnQueue( LPTCARQUEUE &lpCarQueue, TCARINFORMATION carinfo )
{
 LPTCARNODE lpCarNode = ( LPTCARNODE ) malloc( sizeof( carnode ) );
 lpCarNode->carinfo = carinfo;
 lpCarNode->lpNext = NULL;
 lpCarQueue->lpRear->lpNext = lpCarNode;
 lpCarQueue->lpRear = lpCarQueue->lpRear->lpNext;
 lpCarQueue->nEffectiveSize++;
}


// 队头元素从链队 lpCarQueue 中出队并存入 carinfo
void DeQueue( LPTCARQUEUE &lpCarQueue, TCARINFORMATION &carinfo )
{
 LPTCARNODE lpTemp = lpCarQueue->lpHead->lpNext;
 carinfo = lpTemp->carinfo;
 lpCarQueue->lpHead->lpNext = lpTemp->lpNext;
 free( lpTemp );
 lpCarQueue->nEffectiveSize--;
}


// 若链队 lpCarQueue 为空,返回 TRUE;否则,返回 FALSE
BOOL IsQueueEmpty( LPTCARQUEUE lpCarQueue )
{
 return lpCarQueue->nEffectiveSize == 0;
}


// 销毁链队 lpCarQueue
void DestroyQueue( LPTCARQUEUE &lpCarQueue )
{
 LPTCARNODE lpNextCarNode = NULL;
 for ( LPTCARNODE lpCarNode = lpCarQueue->lpHead; lpCarNode != NULL; lpCarNode = lpNextCarNode )
 {
  lpNextCarNode = lpCarNode->lpNext;
  free( lpCarNode );
 }
 free( lpCarQueue );
 lpCarQueue = NULL;
}


// 将字符串时间格式转换为数字(分钟)格式,例如 12:36 将被转换为 756 ( 12 * 60 + 36 )
int ConvertTimeFormat( char *lpTime )
{
 int nHour = 0;
 int nMinute = 0;

 sscanf( lpTime, "%d:%d", &nHour, &nMinute );

 return nHour * 60 + nMinute;
}


// 根据在停车场内的停留时间 nContinuanceMinutes (分钟)计算费用
double CalculateExpense( int nContinuanceMinutes )
{
 return nContinuanceMinutes * ( 5.0 / 60 );
}


int main( void )
{
 int nParkCapability = 0;   // 停车场容量

 putchar( '\n' );
 printf( "请输入停车场容量:" );
 scanf( "%d", &nParkCapability );
 
 LPTCARSTACK lpCarStack = NULL;   // 停车场,用栈模拟
 InitStack( lpCarStack, nParkCapability );

 LPTCARQUEUE lpCarQueue = NULL;   // 便道,用链队模拟
 InitQueue( lpCarQueue );

 char cCommandType = NULL;   // 命令类型
 char szUserInput[128] = { NULL };  // 用户输入
 do 
 {
  putchar( '\n' );
  printf( "--------------------" );
  puts( "[命令类型]" );
  puts( "1 - 车辆到达" );
  puts( "2 - 车辆离开" );
  puts( "3 - 停止输入" );
  puts( "4 - 显示当前停车场和便道使用情况" );
  putchar( '\n' );
  puts( "例:" );
  puts( "1,吉A1234,14:26" );
  puts( "2,吉A1234,16:51" );
  puts( "3" );
  puts( "4" );
  putchar( '\n' );
  printf( "请输入命令:" );
  scanf( "%s", szUserInput );
  puts( "--------------------" );

  char szCarInformation[128] = { NULL };
  sscanf( szUserInput,   // 将命令类型与车辆信息分开存放
   "%c,%s",
   &cCommandType,   // 用户输入的前半部分,即命令类型
   szCarInformation  // 用户输入的后半部分,即车辆信息
   );

  char *lpCommaLocation = NULL;  // 车辆信息字符串中的逗号位置

  for ( lpCommaLocation = szCarInformation; *lpCommaLocation != '\0'; lpCommaLocation++ )
  {
   if ( *lpCommaLocation == ',' )
   {
    break;
   }
  }
  *lpCommaLocation = '\0';
  
  TCARINFORMATION carinfo = { NULL }; // 存储本次用户输入的车辆信息
  
  strcpy( carinfo.szRegistrationMark, szCarInformation );

  if ( cCommandType == '1' )
  {
   strcpy( carinfo.szArrivalTime, lpCommaLocation + 1 );

   if ( FALSE == IsStackFull( lpCarStack ) )
   {
    strcpy( carinfo.szEntranceTime, carinfo.szArrivalTime );
    Push( lpCarStack, carinfo );
    printf( "已进入停车场第 %d 个车位\n",
     lpCarStack->nTop + 1
     );
    printf( "车牌号:\t\t%s\n", carinfo.szRegistrationMark );
    printf( "进入时间:\t%s\n", carinfo.szEntranceTime );
    puts( "是否收费:\t是" );
   }
   else
   {
    EnQueue( lpCarQueue, carinfo );
    printf( "停车场已满,已停放在便道的第 %d 个车位\n",
     lpCarQueue->nEffectiveSize
     );
    printf( "车牌号:\t\t%s\n", carinfo.szRegistrationMark );
    printf( "停放时间:\t%s\n", carinfo.szArrivalTime );
    puts( "是否收费:\t否" );
   }
  }
  else if ( cCommandType == '2' )
  {
   strcpy( carinfo.szDepartureTime, lpCommaLocation + 1 );

   LPTCARSTACK lpTempCarStack = NULL;
   InitStack( lpTempCarStack, nParkCapability );
   
   TCARINFORMATION carinfoOut = { NULL };

   BOOL bIsCarFound = FALSE;
   while ( FALSE == IsStackEmpty( lpCarStack ) )
   {
    Pop( lpCarStack, carinfoOut );
    if ( 0 != strcmp( carinfoOut.szRegistrationMark, carinfo.szRegistrationMark ) )
    {
     Push( lpTempCarStack, carinfoOut );
    }
    else
    {
     bIsCarFound = TRUE;
     break;
    }
   }

   while ( FALSE == IsStackEmpty( lpTempCarStack ) )
   {
    TCARINFORMATION tempcarinfo = { NULL };
    Pop( lpTempCarStack, tempcarinfo );
    Push( lpCarStack, tempcarinfo );
   }

   if ( FALSE == bIsCarFound )
   {
    printf( "车牌号为 %s 的车未进入停车场.\n", carinfo.szRegistrationMark );
    Pause( "--------------------\n按任意键输入下一条信息...\n" );
    continue;
   }

   strcpy( carinfoOut.szDepartureTime, carinfo.szDepartureTime );
   int nEntranceTime = ConvertTimeFormat( carinfoOut.szEntranceTime );
   int nDepartureTime = ConvertTimeFormat( carinfoOut.szDepartureTime );
   int nContinuanceMinutes = nDepartureTime - nEntranceTime;
   printf( "计费时段:\t%s - %s (共 %d 分钟)\n",
    carinfoOut.szEntranceTime,
    carinfoOut.szDepartureTime,
    nContinuanceMinutes
    );
   double rExpense = CalculateExpense( nContinuanceMinutes );
   printf( "应交纳的费用:\t%.1lf 元\n", rExpense );

   if ( FALSE == IsQueueEmpty( lpCarQueue ) )
   {
    TCARINFORMATION tempcarinfo = { NULL };
    DeQueue( lpCarQueue, tempcarinfo );
    strcpy( tempcarinfo.szEntranceTime, carinfoOut.szDepartureTime );
    Push( lpCarStack, tempcarinfo );
    puts( "--------------------" );
    printf( "停放在便道的第 1 个车位,车牌号为 %s 的车已进入停车场\n",
     tempcarinfo.szRegistrationMark
    );
   }
  }
  else if ( cCommandType == '3' )
  {
   puts( "********************" );
   puts( "感谢使用此系统" );
   puts( "********************" );
   break;
  }
  else if ( cCommandType == '4' )
  {
   putchar( '\n' );
   puts( "[停车场使用情况]\n" );
   puts( "[车位]\t[车牌号]\t[到达时间]\t[进入(开始计费)时间]\n");
   for ( int i = 0; i <= lpCarStack->nTop; i++ )
   {
    printf( "%d\t%s\t\t%s\t\t%s\n",
     i + 1,
     lpCarStack->lpCarInformation[i].szRegistrationMark,
     lpCarStack->lpCarInformation[i].szArrivalTime,
     lpCarStack->lpCarInformation[i].szEntranceTime
     );
   }
   putchar( '\n' );
   putchar( '\n' );
   putchar( '\n' );
   puts( "[便道使用情况]\n" );
   puts( "[车位]\t[车牌号]\t[到达时间]\t[进入(开始计费)时间]\n");
   int nNum = 0;
   for ( LPTCARNODE lpCarNode = lpCarQueue->lpHead->lpNext;
    lpCarNode != NULL; lpCarNode = lpCarNode->lpNext )
   {
    nNum++;
    printf( "%d\t%s\t\t%s\t\t%s\n",
     nNum,
     lpCarNode->carinfo.szRegistrationMark,
     lpCarNode->carinfo.szArrivalTime,
     lpCarNode->carinfo.szEntranceTime
    );
   }
   putchar( '\n' );
  }
  else
  {
   puts( "输入信息有误.第一个字符只能为 '1' 或 '2' 或 '3' 或 '4'" );
  }
  Pause( "--------------------\n按任意键输入下一条信息.\n" );
 } while ( TRUE );

 DestroyStack( lpCarStack );//销毁栈 
 DestroyQueue( lpCarQueue );//销毁队列 

 Pause( "\n按任意键退出程序...\n" );

 return 0;
}
