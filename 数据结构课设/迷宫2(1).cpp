#include<stdio.h>
#include<conio.h>
#include<windows.h>
#include<time.h>
#include<string.h>
#include<algorithm>
#include<queue>
using namespace std;
#define Height 31
#define Width 25
#define Wall 1
#define Road 0
#define Start 2
#define End 3
#define Esc 5
#define Up 1
#define Down 2
#define Left 3
#define Right 4
int Map[Height+2][Width+2];
int dui[5][2]={{0,0},{0,1},{0,-1},{1,0},{-1,0}};
int bj;
void gotoxy(int x,int y)
{
	COORD coord;
	coord.X=x;
	coord.Y=y;
	SetConsoleCursorPosition( GetStdHandle( STD_OUTPUT_HANDLE ), coord ); 
}
void hidden()
{
	HANDLE hOut = GetStdHandle(STD_OUTPUT_HANDLE);
	CONSOLE_CURSOR_INFO cci;
	GetConsoleCursorInfo(hOut,&cci);
	cci.bVisible=0;
	SetConsoleCursorInfo(hOut,&cci);
}
void create(int x,int y)
{
	int c[4][2]={0,1,1,0,0,-1,-1,0};
	int i,j,t;
	for(i=0;i<4;i++)
	{
		j=rand()%4;
		t=c[i][0];c[i][0]=c[j][0];c[j][0]=t;
		t=c[i][1];c[i][1]=c[j][1];c[j][1]=t;
	}
	Map[x][y]=Road;
	for(i=0;i<4;i++)
	if(Map[x+2*c[i][0]][y+2*c[i][1]]==Wall)
	{
		Map[x+c[i][0]][y+c[i][1]]=Road;
		create(x+2*c[i][0],y+2*c[i][1]);
	}
}
void paint(int x,int y)
{
	gotoxy(2*y-2,x-1);
	switch(Map[x][y])
	{
		case Start:printf("入");break;
		case End:printf("出");break;
		case Wall:printf("※");break;
		case Road:printf(" ");break;
		case 10:printf("★");break;
	}
}
int dfs(int x,int y)
{
    int i,p,q;
    p=x;q=y;
    for(i=1;i<=4;i++)
    {
        if(bj==1)
        return 0;
        p=x+dui[i][0];
        q=y+dui[i][1];
        if(p<0||q<0||p>Height+1||q>Width+1)
        continue;
        if(Map[p][q]==1||Map[p][q]==10)
        continue;
        if(p==Height-1&&q==Width)
        {
            bj=1;
            return 0;
        }
        Map[p][q]=10;
        dfs(p,q);
        if(bj==1)
        return 0;
        Map[p][q]=0;
    }
    return 0;
}
void ans(int x,int y)
{
    int i,j;
    bj=0;
    Map[x][y]=1;
    dfs(x,y);
    Map[x][y]=10;
    system("cls");
    for(i=1;i<=Height;i++)
	{
		for(j=1;j<=Width;j++)
		{
			paint(i,j);
		}
	}
	printf("\n\n已给出答案");
}
int get_key(int x,int y)
{
	int asd=0;
	char c;
	while(c=getch())
	{
		if(asd==1)
		{
			asd=0;
			for(int i=1;i<=Height;i++)
			{
				for(int j=1;j<=Width;j++)
				{
					if(Map[i][j]==10)
					Map[i][j]=0;
					paint(i,j);
				}
			}
			printf("\n\n如要给出答案请输入z");
		}
		if(c=='z')
		{
			ans(x,y);
			asd=1;
			continue;
		}
		if(c==27) return Esc;
		if(c!=-32)continue;
		c=getch();
		if(c==72) return Up;
		if(c==80) return Down;
		if(c==75) return Left;
		if(c==77) return Right;
	}
return 0;
}

void game()
{
	int x=2,y=1;
	int c;
	while(1)
	{
		gotoxy(2*y-2,x-1);
		printf("☆");
		if(Map[x][y]==End)
		{
			system("cls"); 
			gotoxy(30,24);
			printf("到达终点，按任意键结束");
			getch();
			break;
		}
		c=get_key(x,y);
		if(c==Esc)
		{
			gotoxy(0,24);
			break;
		}
		switch(c)
		{
			case Up:if(Map[x-1][y]!=Wall)
					{
						paint(x,y);
						x--;
					}break;
			case Down:if(Map[x+1][y]!=Wall)
					{
						paint(x,y);
						x++;
					}break;
			case Left:if(Map[x][y-1]!=Wall)
					{
						paint(x,y);
						y--;
					}break;
			case Right:if(Map[x][y+1]!=Wall)
					{
						paint(x,y);
						y++;
					}break;
		}
	}
}
int fmain()
{
	int i,j;
	srand((unsigned)time(NULL));
	hidden();
	for(i=0;i<=Height+1;i++)
	{
		for(j=0;j<=Width+1;j++)
		{
			if(i==0||i==Height+1||j==0||j==Width+1)
			{
				Map[i][j]=Road;
			}
			else
			{
				Map[i][j]=Wall;
			}
		}
	}
	create(2*(rand()%(Height/2)+1),2*(rand()%(Width/2)+1));
	for(i=0;i<=Height+1;i++)
	{
		Map[i][0]=Wall;
		Map[i][Width+1]=Wall;
	}
	for(j=0;j<=Width+1;j++)
	{
		Map[0][j]=Wall;
		Map[Height+1][j]=Wall;
	}
	Map[2][1]=Start;
	Map[Height-1][Width]=End;
	for(i=1;i<=Height;i++)
	{
		for(j=1;j<=Width;j++)
		{
			paint(i,j);
		}
	}
	printf("\n\n如要给出答案请输入z");
	game();
	getch();
	return 0;
}
int main()
{
	system("color CE");
	char aa[1000]="\n\n\n\n\t\t 主设计: 潘永超\n\n\n\t\t 程序设计： \n\n\n\t\t";
	printf("\n\n\n\n\n");
	printf("\t\t   ★★★★★★★★★★★★★★★★★★★\n");
	printf("\t\t   ★                                  ★\n");
	printf("\t\t   ★       >>>>> 迷宫游戏 <<<<<       ★\n");
	printf("\t\t   ★                                  ★\n");
	printf("\t\t   ★★★★★★★★★★★★★★★★★★★\n");
	int ii=0;
	while(aa[ii]!='\0')
	{
		printf("%c",aa[ii]);
		ii++;
		Sleep(60);
	}
	system("pause");
	system("cls");
	while(1)
	{
		system("color 17");
		system("cls");
		printf("\n\n\n\n\n");
		printf("\t\t\t╔══════════════╗\n");
		printf("\t\t\t║         迷宫游戏           ║\n");
		printf("\t\t\t║   --------------------     ║\n");
		printf("\t\t\t║                            ║\n");
		printf("\t\t\t║      1. 开始游戏           ║\n");
		printf("\t\t\t║                            ║\n");
		printf("\t\t\t║      2. 退出游戏           ║\n");
		printf("\t\t\t║                            ║\n");
		printf("\t\t\t║  请输入你的选择<1或2>      ║\n");
		printf("\t\t\t╚══════════════╝\n");
		printf("                 你的选择是：");
		int choose;
		scanf("%d",&choose);
		if(choose==2) break;
		if(choose<1||choose>2)
		{
			printf("输入错误请重新输入！！！\n");
			system("pause");
			continue;
		} 
		else
		{
			system("cls");fmain();
		}
	}
	system("cls");
	return 0;
}
