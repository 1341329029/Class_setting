<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
    <link rel="stylesheet" type="text/css" href="css/index.css"/>
        <title>贼厉害网上论坛</title>
        <style type="text/css">
            <!--

            body, td, th { font-size: 14px; }
            .style1
            {
                width: 500px;
            }
            .style2
            {
                height: 33px;
                width: 70px;
            }
            .style3
            {
                height: 33px;
                width: 71px;
            }
            .style4
            {
                height: 33px;
                width: 72px;
            }
            .style5
            {
                height: 33px;
                width: 73px;
            }
            .style6
            {
                height: 33px;
                width: 67px;
            }
            .style7
            {
                height: 33px;
                width: 56px;
            }
            #Image4 {
                margin-left: -82px;
                margin-top: 98px;
            }
-->
        </style>

    </head>
    <body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
        <form id="form1" runat="server">
            <div>
            <div class="container">
                <img  class="logo" src="image/index_02.gif">
      <div class="header">
   <div style="text-align: center">
     <table  class ="hesdr" border="0">
         <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="15pt"
                                Width="197px" OnClick="LinkButton2_Click" Height="25px" 
                    ForeColor="Black">用户信息管理</asp:LinkButton></td>
            <td valign="middle" class="style2">
                </td>
            <td class="style2">
                <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="15pt" 
                                Width="202px" OnClick="LinkButton3_Click" ForeColor="Black" 
                    Height="22px">修改当前用户信息</asp:LinkButton></td>
            <td class="style3">
            </td>
            <td class="style2">
                <asp:LinkButton ID="LinkButton5" runat="server" Font-Size="15pt" 
                                Width="198px" OnClick="LinkButton5_Click" ForeColor="Black">用户信息查询 </asp:LinkButton></td>
            <td class="style2">
            </td>
            <td class="style4">
                <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="15pt" 
                                Width="130px" OnClick="LinkButton4_Click" ForeColor="Black">用户登录      </asp:LinkButton></td>
            <td class="style2">
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>                                                 
     </table>
          </div>                   
      </div>
     <div class="main">
      <div style="text-align: center">
                    <table border="0" style="width: 800px">
                        <tr>
                            <td style="width: 807px" align="center">
                  
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/image/faxintie an niu.gif" 
                                    OnClick="ImageButton2_Click" Height="25px" Width="89px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 44px; width: 807px;">
                                <div style="text-align: center">
                                    <table border="0" style="width: 122%">
                                        <tr>
                                            <td colspan="6" style="width: 76px">
                                             
                                            </td>
                                     
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 4px; width: 76px;">
                                                <table align="center" border="0" cellpadding="0" cellspacing="0" height="27">
                                                    <tr>
                                                        <td style="height: 33px" width="28">
                                                            <asp:Image ID="Image3" runat="server" ImageUrl="~/image/speaker.gif" 
                                                                Width="30px" />&nbsp;</td>
                                                        <td style="height: 33px; text-align: left; width: 59px;">
                                                            <asp:Label ID="Label6" runat="server" Text="Label" Width="60px" ForeColor="#FF8000"></asp:Label></td>
                                                        <td style="height: 33px; text-align: left; width: 56px;">
                                                            <asp:Literal ID="Literal1" runat="server"></asp:Literal></td>
                                                        <td style="height: 33px; text-align: left; width: 6px;">
                                                            <asp:Image ID="Image1" runat="server" Height="8px" ImageUrl="~/image/jiantou.gif"
                                                                       Width="12px" />&nbsp;</td>
                                                        <td class="style6">
                                                            &nbsp;用户名：</td>
                                                        <td style="height: 33px" width="135">
                                                            <asp:TextBox ID="txtname" runat="server" Width="103px" Height="22px"></asp:TextBox>&nbsp;</td>
                                                        <td class="style7">
                                                            密码：&nbsp;</td>
                                                        <td style="height: 33px" width="136">
                                                            <asp:TextBox ID="txtpwd" runat="server" Width="108px" TextMode="Password" 
                                                                Height="20px"></asp:TextBox>&nbsp;</td>
                                                        <td style="height: 33px" width="72">
                                                            &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/denglu an niu.gif"
                                                                                   OnClick="ImageButton1_Click1" Height="21px" 
                                                                Width="50px" /></td>
                                                        <td style="height: 33px" width="64">
                                                            &nbsp;<asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/image/zhuce an niu.gif"
                                                                                   OnClick="ImageButton3_Click" Width="49px" /></td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td style="height: 4px; width: 116px;">
                                            </td>
                                        </tr>
                                        <tr>
                                            
                                            <td style="height: 29px; width: 116px;">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="width: 76px">
                                                <asp:GridView ID="gvlt" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                                              CellPadding="4" Font-Size="12pt" ForeColor="#333333" 
                                                    GridLines="None" Width="995px" Font-Names="华文新魏" PageSize="14" 
                                                    OnRowDeleting="gvlt_RowDeleting" Height="278px">
                                                    <FooterStyle BackColor="#8080FF" Font-Bold="True" ForeColor="White" />
                                                    <Columns>
                                                        <asp:BoundField DataField="ContId" HeaderText="编号" Visible="False" />
                                                        <asp:BoundField DataField="Subject" HeaderText="标题" />
                                                        <asp:BoundField DataField="UserName" HeaderText="作者　" />
                                                        <asp:BoundField DataField="CreateTime" HeaderText="创建日期及时间" />
                                                        <asp:BoundField DataField="LastAnswerTime" HeaderText="最后回复时间" />
                                                        <asp:BoundField DataField="HitCount" HeaderText="人气指数" />
                                                        <asp:HyperLinkField DataNavigateUrlFields="ContId" DataNavigateUrlFormatString="~/teizixinxi/chakan.aspx?ContId={0}"
                                                                            HeaderText="详细信息" Text="详细信息" />
                                                        <asp:CommandField ShowDeleteButton="True" />
                                                    </Columns>
                                                    <RowStyle BackColor="LightBlue" />
                                                    <EditRowStyle BackColor="#2461BF" />
                                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                    <PagerStyle BackColor="LightBlue" ForeColor="White" HorizontalAlign="Center" />
                                                    <HeaderStyle BackColor="#EFF3FB" Font-Bold="True" ForeColor="DimGray" />
                                                    <AlternatingRowStyle BackColor="White" Font-Size="Small" />
                                                </asp:GridView>
                                            </td>
                                            <td style="width: 116px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="width: 76px">
                                                <asp:Image ID="Image4" runat="server" ImageUrl="~/image/index_17.gif" 
                                                    Width="995px" Height="227px" /></td>
                                            <td style="width: 116px">
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                &nbsp;
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
               
    
            </div>
        </form>
    </body>
</html>