<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yonghu.aspx.cs" Inherits="yonghu" %>

<%@ Register Src="../UserControl/foot.ascx" TagName="foot" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
         <title>贼厉害网上论坛</title>
        <link rel="stylesheet" type="text/css" href="../css/index.css"/>
        <style type="text/css">
            .table
            {
                margin-left:640px;
            }
            .style1
            {
                width: 100px;
                height: 42px;
            }
            .style2
            {
                width: 177px;
                height: 42px;
            }
            .style3
            {
                width: 806064px;
                height: 42px;
            }
            .style5
            {
                width: 107px;
            }
            .style6
            {
                width: 81px;
            }
            .style8
            {
                height: 4px;
                width: 107px;
            }
            .style9
            {
                height: 30px;
                width: 107px;
            }
            .style10
            {
                width: 77px;
                height: 263px;
            }
            .style11
            {
                width: 77px;
            }
            #Foot1
            {
                margin-top:-30px;
                ｝
        }
            .style12
            {
                height: 69px;
            }
            .style13
            {
                width: 81px;
                height: 69px;
            }
            .style14
            {
                height: 69px;
                width: 107px;
            }
        </style>

    </head>
    <body >
        <form id="form1" runat="server">
        <div class="container">
      <img  class="logo" src="../image/index_02.gif">
      <div class="header">
      <table border="0"class="table" style="width: 82%; height: 53px;">
                                <tr>
                                    <td class="style1">
                                        </td>
                                    <td class="style1">
                                        <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="15pt" 
                                                        OnClick="LinkButton2_Click" Width="136px" 
                                            CausesValidation="False" ForeColor="Black">用户信息管理</asp:LinkButton></td>
                                    <td class="style1">
                                        </td>
                                    <td class="style1">
                                        <asp:LinkButton ID="LinkButton5" runat="server" Font-Size="15pt"
                                                        OnClick="LinkButton3_Click" Width="239px" 
                                            CausesValidation="False" ForeColor="Black">修改当前用户信息</asp:LinkButton></td>
                                    <td class="style1">
                                        </td>
                                    <td class="style1">
                                        <asp:LinkButton ID="LinkButton6" runat="server" Font-Size="15pt"
                                                        Width="202px" OnClick="LinkButton6_Click" 
                                            CausesValidation="False" ForeColor="Black">用户信息查询 </asp:LinkButton></td>
                                    <td class="style1">
                                        </td>
                                    <td class="style2">
                                        <asp:LinkButton ID="LinkButton7" runat="server" Font-Size="15pt"
                                                        Width="167px" OnClick="LinkButton7_Click" 
                                            CausesValidation="False" ForeColor="Black">用户登录</asp:LinkButton></td>
                                    <td class="style1">
                                    </td>
                                    <td class="style3">
                                        &nbsp;</td>
                                </tr>
                            </table>
      </div>
     <div class="main">

     <div style="text-align: center">
                <table  style="width: 1000px; height: 704px;">
                    
                   
                    <tr style="font-family: Times New Roman">
                        <td align="center" class="style11">
                            <table style="height: 452px; width: 978px;">
                              
                                <tr>
                                    <td class="style14">
                                        &nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="华文新魏" Font-Size="24px"
                                                         Text="用户列表"></asp:Label>
                                    </td>
                                    <td colspan="2" class="style12">
                                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="华文新魏" ForeColor="Blue"
                                                        OnClick="LinkButton1_Click">添加</asp:LinkButton>
                                        &nbsp; &nbsp;&nbsp;
                                        <asp:LinkButton ID="LinkButton2" runat="server" Font-Names="华文新魏" ForeColor="Blue"
                                                        OnClick="LinkButton2_Click">查询</asp:LinkButton>
                                        &nbsp; &nbsp;
                                        <asp:LinkButton ID="LinkButton3" runat="server" Font-Names="华文新魏" Font-Size="Medium"
                                                        OnClick="LinkButton3_Click">返回首页</asp:LinkButton>&nbsp;</td>
                                    <td align="center" class="style13">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" class="style8">
                                    </td>
                                    <td align="center" colspan="2" rowspan="5">
                                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                                      CellPadding="4" Font-Size="Small" ForeColor="#333333" 
                                            GridLines="None" OnRowDeleting="GridView1_RowDeleting"
                                                      OnSelectedIndexChanged="GridView1_SelectedIndexChanged" 
                                            Width="109%" OnRowDataBound="GridView1_RowDataBound" Height="356px">
                                            <FooterStyle BackColor="#3F5D79" Font-Bold="True" ForeColor="White" />
                                            <Columns>
                                                <asp:BoundField DataField="UserId" HeaderText="用户编号" />
                                                <asp:BoundField DataField="UserName" HeaderText="用户姓名" />
                                                <asp:BoundField DataField="Ename" HeaderText="英文姓名" />
                                                <asp:BoundField DataField="Email" HeaderText="电子邮箱" />
                                                <asp:CommandField ShowDeleteButton="True" HeaderText="删除" />
                                                <asp:HyperLinkField DataNavigateUrlFields="UserId" DataNavigateUrlFormatString="yonghuxiugai.aspx?UserId={0}"
                                                                    Text="修改" HeaderText="修改" />
                                            </Columns>
                                            <RowStyle BackColor="#EFF3FB" />
                                            <EditRowStyle BackColor="#3F5D79" />
                                            <SelectedRowStyle BackColor="#3F5D79" Font-Bold="True" ForeColor="#333333" />
                                            <PagerStyle BackColor="#3F5D79" ForeColor="White" HorizontalAlign="Center" />
                                            <HeaderStyle BorderStyle="None" Font-Bold="True" ForeColor="White" BackColor="#3F5D79" />
                                            <AlternatingRowStyle BackColor="White" />
                                        </asp:GridView>
                                        &nbsp;&nbsp;
                                    </td>
                                    <td style="font-family: Times New Roman; font-size: 12pt; height: 4px; width: 81px;">
                                        &nbsp;</td>
                                </tr>
                                <tr style="font-family: Times New Roman; font-size: 12pt;">
                                    <td align="right" class="style5">
                                    </td>
                                    <td style="width: 81px">
                                    </td>
                                </tr>
                                <tr style="font-family: Times New Roman; font-size: 12pt;">
                                    <td align="center" class="style5">
                                    </td>
                                    <td align="center" style="width: 81px">
                                        &nbsp;</td>
                                </tr>
                                <tr style="font-family: Times New Roman; font-size: 12pt;">
                                    <td class="style9">
                                    </td>
                                    <td style="height: 30px; width: 81px;">
                                    </td>
                                </tr>
                                <tr style="font-family: Times New Roman; font-size: 12pt;">
                                    <td class="style5">
                                    </td>
                                    <td class="style6">
                                    </td>
                                </tr>
                                <tr style="font-family: Times New Roman; font-size: 12pt;">
                                    <td colspan="1" class="style5">
                                    </td>
                                    <td colspan="3">
                                        <asp:Label ID="Label1" runat="server" Font-Size="Small" ForeColor="Maroon" Text="提示：不能删除姓名为Tsoft（管理员）的信息"></asp:Label>&nbsp;&nbsp;</td>
                                </tr>
                                </table>
                        </td>
                    </tr>
                    <tr style="font-family: Times New Roman; font-size: 12pt;">
                        <td class="style10">
                            <uc1:foot ID="Foot1" Width="995px" Height="180px" runat="server" />
                        </td>
                    </tr>
                </table>
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