import os
import time
class user:
    def __init__(self):
        self.username=""#姓名
        self.password=""#密码
        self.permisson=""#权限

class item:
    def __init__(self):
        self.father = 1 #父节点下标
        self.name = '' #名称
        self.isfolder = True #判断是否是文件夹
        self.son = [] #列表子目录
        self.type=''#类型
        self.limit=111 #权限
        self.filenumber = 0 #文件号
        self.time=""

num = 1
now = 0
number=0
filenumbers=0
cur_folder = 0
userlist = []#姓名存储列表
docu = []#文件目录存储列表
userlist.append(user())
docu.append(item())  # 定义结构对象
content=[]
#登录验证
def login():
    name=input("请输入用户名:") 
    i=IsSameUserName(name)
    if (i):
        while i:
            psd=input("请输入密码:")
            if userlist[i].password == psd:
                n=os.system('clear')
                print("登录成功")
                global now
                now=i
                init()
                meau()
                break
            else:
                print("登录失败密码错误请重新输入")
    else:
        n=os.system('clear')
        print("用户名不存在")        
        main()

#判断相同名字是存在   
def IsSameName(name):
    for i in docu[cur_folder].son:
        if docu[i].name == name:
            return False
    return True   
    
#判断用户名是否存在
def IsSameUserName(name):
    
    for i in range(1,num):
        if userlist[i].username == name:
            return i
    return False

#注册
def register():
    username=input("请输入你的用户名:")
    i=IsSameUserName(username)
    if i:
        print("用户名重复请重新输入")
        register()

    password=input("请输入你的密码:")
    userlist.append(user())
    while (1):
        print("1.超级管理员:777 2.草鸡管理员:555 3.普通用户：111")
        number=int(input("输入定义你的级别："))
        global num
        if number==1:
            userlist[num].permission=777
            break
        elif number==2:
            userlist[num].permission=555
            break
        elif number==3:
            userlist[num].permission=111
            break
        else:
            print("请重新输入")
    userlist[num].username=username
    userlist[num].password=password
    num += 1 
    n=os.system('clear')
    print("注册成功")
    main()
#初始化
def init():
    docu[0].father = 0
    docu[0].name = "根目录"
    docu[0].isfolder = True

#显示当前目录信息
def output():
    n=os.system('clear')
    print()
    print("        目录信息")
    print("****************************")
    if docu[cur_folder].father != cur_folder:
        print("上级目录名称：", docu[docu[cur_folder].father].name)
    print("当前目录名称: ", docu[cur_folder].name, "\n")
    print("目录下文件:", "\n")
    print("序号\t| 文件名\t| 属性")
    if len(docu[cur_folder].son) == 0:
        print("空")
    else:
        j = 0
        for i in docu[cur_folder].son:
            j += 1
            print(j, "\t| ", docu[i].name, "\t| ", end="")
            if docu[i].isfolder:
                print("文件夹")
            else: 
                print("文件")
    print("****************************", "\n")

#新建文件
def new_file():
    n=os.system('clear')
    new_name=input("请输入文件名:")
    new_type = new_name.split(".",-1)[-1]
    new_name = new_name.split(".",-1)[:-1][0]
    print("请输入查看权限")
    while (1):
        print("1.超级管理员:777 2.草鸡管理员:555 3.普通用户：111")
        ber=int(input("输入定义你的级别："))
        global num
        if ber==1:
            new_limit=777
            break
        elif ber==2:
            new_limit=555
            break
        elif ber==3:
            new_limit=111
            break
        else:
            print("请重新输入")
    global number
    number += 1
    docu.append(item())
    n=os.system('clear')
    print()
    if IsSameName(new_name):
        print("文件创建成功！ 不存在同名文件文件夹!")
    else:
        print("存在同名文件文件夹!  文件创建失败!")
        return
    global cur_folde
    docu[number].father = cur_folder
    docu[cur_folder].son.append(number)
    docu[number].name = new_name
    docu[number].isfolder = False
    docu[number].limit = new_limit
    docu[number].time=time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()) 
    docu[number].type = new_type
    print("请编辑文件（：q为退出）")
    app=[]
    while(1):
        i=input()
        if(i==":q"):
            break;
        app.append(i)
    content.append(app)
    global filenumbers
    docu[number].filenumber = filenumbers
    filenumbers +=1

#新建文件夹
def new_folder():
    n=os.system('clear')
    new_name=input("请输入文件夹名:")
    print("请输入查看权限")
    while (1):
        print("1.超级管理员:777 2.草鸡管理员:555 3.普通用户：111")
        ber=int(input("输入定义你的级别："))
        global num
        if ber==1:
            new_limit=777
            break
        elif ber==2:
            new_limit=555
            break
        elif ber==3:
            new_limit=111
            break
        else:
            print("请重新输入")
    global number
    number += 1
    docu.append(item())
    print()
    if IsSameName(new_name):
        print("文件夹创建成功！ 不存在同名文件文件夹!")
    else:
        print("存在同名文件文件夹!  文件夹创建失败!")
        return
    global cur_folde
    docu[number].father = cur_folder
    docu[cur_folder].son.append(number)
    docu[number].name = new_name
    docu[number].isfolder = True
    docu[number].limit = int(new_limit)
    docu[number].time=time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()) 

#查看文件/文件夹信息
def check_file():
    output()
    xu = int(input("请输入您要查看的序号："))
    if xu < 1 or xu > len(docu[cur_folder].son):
        print("输入的序号不合法！")
        return
    ro=docu[docu[cur_folder].son[xu - 1]].limit
    if (root(ro)):
        print("查看文件信息")
        if(docu[docu[cur_folder].son[xu - 1]].isfolder):
            isfolder="文件夹"
        else:
            isfolder="文件"
        print("*********************")
        print("*   文件序号:"+str(xu) )
        print("*   名称:"+docu[docu[cur_folder].son[xu - 1]].name)
        print("*   类型:"+docu[docu[cur_folder].son[xu - 1]].type )
        print("*   权限:"+str(docu[docu[cur_folder].son[xu - 1]].limit) )
        print("*   属性:"+isfolder )
        print("*   创建时间:"+docu[docu[cur_folder].son[xu - 1]].time )
        print("*********************")
    else:
        print("权限不够")

#权限判定
def root(root):
    if (userlist[now].permission>=root):
        return True
    else:
        return False
#查看文件
def check_note():
    output()
    xu = int(input("请输入您要查看的序号："))
    if xu < 1 or xu > len(docu[cur_folder].son):
        print("输入的序号不合法！")
        return
    ro=docu[docu[cur_folder].son[xu - 1]].limit
    if (root(ro)):
        filenumber=docu[docu[cur_folder].son[xu - 1]].filenumber
        print() 
        print("文件内容如下")
        print("*********************************************")
        print()    
        for tempName in content[filenumber]:
            print(tempName)
        print() 
        print() 
        print() 
        print() 
        print("*********************************************")
    else:
        print("权限不够")

#查看当前路径
def find_where():
    n=os.system('clear')
    print() 
    print() 
    print("*********************************************")
    ou=cur_folder
    if(ou==0):
        print( "\n"+"\n"+"当前目录名称为根目录 "+"\n"+"\n")
    else:
        print("当前目录名称: ")
        s1="/" 
        while (ou!=0):            
            s1="/"+docu[ou].name+s1
            ou=docu[ou].father 
        print(s1)
    print() 
    print() 
    print("*********************************************")
  
#修改文件
def update_file():
    output()
    xu = int(input("请输入您要修改的序号："))
    if xu < 1 or xu > len(docu[cur_folder].son):
        print("输入的序号不合法！")
        return
    ro=docu[docu[cur_folder].son[xu - 1]].limit
    if (root(ro)):
        filenumber=docu[docu[cur_folder].son[xu - 1]].filenumber
        print() 
        print("旧文件内容如下")
        print("*********************************************")
        print()    
        for tempName in content[filenumber]:
            print(tempName)
        print() 
        print() 
        print() 
        print() 
        print("*********************************************")  
        print("上文为旧文件请重新编辑文件（：q为退出）")
        app=[]
        while(1):
            i=input()
            if(i==":q"):
                break;
            app.append(i)
        content[filenumber]=app
        print("修改成功")
    else:
        print("权限不够")

#删除文件或文件夹
def delete_file():
    output()
    xu = int(input("请输入要删除的序号："))
    if xu < 1 or xu > len(docu[cur_folder].son):
        print("输入的序号不合法！")
        return
    ro=docu[docu[cur_folder].son[xu - 1]].limit
    if (root(ro)): 
        docu[cur_folder].son.pop(xu - 1)
    else:
        print("权限不够")

#修改文件或文件夹名
def amend_file():
    output()
    xu = int(input("请输入您要修改的序号："))
    if xu < 1 or xu > len(docu[cur_folder].son):
        print("输入的序号不合法！")
        return
    ro=docu[docu[cur_folder].son[xu - 1]].limit
    if (root(ro)): 
        new_name = input("请输入新的文件文件夹名：")
        if IsSameName(new_name):
            print("修改成功！ 不存在同名文件文件夹!")
        else:
            print("存在同名文件文件夹!  修改失败!")
            return
        docu[docu[cur_folder].son[xu - 1]].name = new_name
    else:
        print("权限不够")

#进入下级目录
def go_down():
    output()
    global cur_folder
    xu = int(input("请输入要进入的子目录的序号："))
    if xu < 1 or xu > len(docu[cur_folder].son):
        print("输入的序号不合法！")
        return
    ro=docu[docu[cur_folder].son[xu - 1]].limit
    if (root(ro)): 
        if not docu[docu[cur_folder].son[xu - 1]].isfolder:
            print("您选中的不是文件夹！")
            return
        cur_folder = docu[cur_folder].son[xu - 1]
        print("成功进入新的文件夹!")
    else:
        print("权限不够")

#进入上级目录
def go_up():
    output()
    global cur_folder
    if docu[cur_folder].father == cur_folder:
        print("已经在根目录了")
    cur_folder = docu[cur_folder].father

#文件管理菜单
def meau():
    while (1):
        print("*   欢迎用户"+userlist[now].username+"来到简文件管理系统   *")
        print("请选择你的操作")
        print("*******************")
        print("0.显示当前目录结构和当前路径","\n")
        print("1.新建文件           2.新建文件夹, \n")
        print("3.查看文件           4.修改文件", "\n")
        print("5.查看文件/文件夹信息  6.查看当前路径 ", "\n")
        print("7.删除文件或文件夹     8.修改文件或文件夹名", "\n")
        print("9.进入下级目录        10.返回上级目录 ", "\n")
        print("11.退出文件系统",  "\n")
        print("****************************")
        value=int(input("请输入功能的选项"))
        if value==0:
            #查看当前目录
            output()           
        elif value==1:
             #新建文件
            new_file()
        elif value==2:
             #新建文件夹
            new_folder()
        elif value==3:
            #查看文件
            check_note()
        elif value==4:
            #修改文件
            update_file()          
        elif value==5:
            #查看文件信息
            check_file()
        elif value==6:
            #查看当前路径
            find_where()
        elif value==7:
            #删除文件或文件夹
            delete_file()
        elif value==8:
            #修改文件或文件夹名
            amend_file()      
        elif value==9:
            # 进入下级目录
            go_down()
        elif value==10:
            #返回上级目录
            go_up()
        elif value==11:
             #退出文件系统
            main()
            break
        else:
            print("输入错误，请重新输入 ")
#主界面           
def main():
    while (1):
        print("\n")
        print("*   欢迎来到简文件管理系统   *")
        print("\n")
        print("*  1.登录  2.注册  3.退出   *")
        print("\n")
        change=int(input("          输入：    "))
        print("\n")
        if change==1:
            login()
            break
        elif change==2:
            register()
            break
        elif change==3:
            break
        else:
            print("输入有误，请重新输入")
        
main()
