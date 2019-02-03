<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yonghuchaxun.aspx.cs" Inherits="yonghuchaxun" %>

<%@ Register Src="../UserControl/foot.ascx" TagName="foot" TagPrefix="uc1" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
          <title>贼厉害网上论坛</title>
        <link rel="stylesheet" type="text/css" href="../css/index.css"/>
          <style type="text/css">
              .main{
                    float: left;
                width: 1017px;
                  margin-left: 250px;
                  height: 1388px;
                  background-color: white;
                  margin-top: 70px;
                  border-radius: 8px;
                    }
                    .container{
                      margin: auto 0px auto auto;
                      width: 1713px;
                      height: 1795px;
                      background-color: #3F5D79;
                    }
                  img
                  {
                      width:60px;
                  }
          </style>
    </head>
    <body>
        <form id="form1" runat="server">
        <div class="container">
      <img style="width: 204px; height: 54px;" class="logo" src="../image/index_02.gif">
      <div class="header">
      <table border="0"class="table" style="width: 82%; height: 45px;">
                                                <tr>
                                                    <td style="width: 100px">
                                                        &nbsp;</td>
                                                    <td style="width: 100px">
                                                        <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="15pt" ForeColor="Black"
                                                                        Width="184px" OnClick="LinkButton2_Click">用户信息管理</asp:LinkButton></td>
                                                    <td style="width: 100px">
                                                        &nbsp;</td>
                                                    <td style="width: 100px">
                                                        <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="15pt" ForeColor="Black"
                                                                        Width="213px" OnClick="LinkButton3_Click">修改当前用户信息</asp:LinkButton></td>
                                                    <td style="width: 100px">
                                                        &nbsp;</td>
                                                    <td style="width: 100px">
                                                        <asp:LinkButton ID="LinkButton5" runat="server" Font-Size="15pt" ForeColor="Black"
                                                                        Width="162px" OnClick="LinkButton5_Click">用户信息查询 </asp:LinkButton></td>
                                                    <td style="width: 100px">
                                                        &nbsp;</td>
                                                    <td style="width: 177px">
                                                        <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="15pt" ForeColor="Black"
                                                                        Width="113px" OnClick="LinkButton4_Click">用户登录</asp:LinkButton></td>
                                                    <td style="width: 177px">
                                                        &nbsp;</td>
                                                    <td style="width: 133px">
                                                        <asp:LinkButton ID="lbtnsy" runat="server" Font-Size="15pt" ForeColor="Black" OnClick="lbtnsy_Click"
                                                                        Width="80px">返回首页</asp:LinkButton></td>
                                                    <td style="width: 815121px">
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
      </div>
     <div class="main">
      <div>
                <div>
                    <div>
                        <div>
                            <div style="text-align: center">
                                <table style="width: 680px">
                                  
                                    <tr>
                                        <td align="center" style="height: 17px; width: 690px;">
                                            <div style="text-align: center">
                                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="华文新魏" Font-Size="X-Large"
                                                           ForeColor="Brown" Width="1000px">用户信息查询</asp:Label></div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="height: 17px; width: 690px;">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="height: 17px; width: 690px;">
                                            <table style="width: 1005px">
                                                <tr>
                                                    <td style="height: 26px; width: 100px;">
                                                    </td>
                                                    <td style="height: 26px; width: 100px;">
                                                        &nbsp;<asp:RadioButton ID="RadioButton1" runat="server" Font-Size="Small" GroupName="a"
                                                                               Text="用户编号" Width="119px" /></td>
                                                    <td style="height: 26px; width: 100px;">
                                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                                                    <td style="height: 26px; width: 100px;">
                                                        <asp:RadioButton ID="RadioButton2" runat="server" Font-Size="Small" GroupName="a"
                                                                         Text="用户名称" Width="91px" /></td>
                                                    <td style="height: 26px; width: 100px;">
                                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                                                    <td style="height: 26px; width: 100px;">
                                                        <asp:Button ID="btnselect" runat="server" Text="查询" OnClick="btnselect_Click" /></td>
                                                    <td style="height: 26px; width: 100px;">
                                                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="全部显示" /></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="height: 17px; width: 690px;">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                                          ForeColor="#333333" GridLines="None"  AllowPaging="True" 
                                                Height="886px"  OnPageIndexChanging="GridView1_PageIndexChanging" 
                                                OnRowDeleting="GridView1_RowDeleting" Width="996px" Font-Names="华文行楷" 
                                                Font-Size="11pt" OnRowDataBound="GridView1_RowDataBound">
                                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                <Columns>
                                                    <asp:ImageField DataImageUrlField="Logo" HeaderText="头像">
                                                    </asp:ImageField>
                                                    <asp:BoundField DataField="UserId" HeaderText="用户编号" />
                                                    <asp:BoundField DataField="UserName" HeaderText="用户名称" />
                                                    <asp:BoundField DataField="Ename" HeaderText="英文姓名" />
                                                    <asp:BoundField DataField="Email" HeaderText="电子邮箱" />
                                                    <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                                                    <asp:HyperLinkField DataNavigateUrlFields="UserId" DataNavigateUrlFormatString="~/dangqianxinxi/xiangxixinxi.aspx?UserId={0}"
                                                                        HeaderText="详细信息" Text="详细信息" />
                                                </Columns>
                                                <EditRowStyle BackColor="#999999" />
                                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="height: 17px; width: 690px;">
                                            <asp:Label ID="Label1" runat="server" Font-Size="Small" ForeColor="Maroon" Text="提示：不能删除姓名为Tsoft（管理员）的信息"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="height: 17px; width: 690px;">
                                            <uc1:foot ID="Foot1" runat="server" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
    
            </div>
     </div>
      <div class="fooster">
        <ul>
          <li>@ Tumblr. Inc.</li>
          <li><a href="#"> Help</a></li>
          <li><a href="#">About</a></li>
          <li><a href="#">What's New</a></li>
          <li><a href="#">API</a></li>
          <li><a href="#">Content Polipr</a></li>
          <li><a href="#">Terms of Service</a></li>
          <li><a href="#">Privacy Policy</a></li>
      </ul>
    </div>
    </div>
           
        </form>
    </body>
</html>