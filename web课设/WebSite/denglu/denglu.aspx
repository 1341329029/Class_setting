<%@ Page Language="C#" AutoEventWireup="true" CodeFile="denglu.aspx.cs" Inherits="denglu" %>

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
                 height: 18px;
             }
             .style2
             {
                 width: 177px;
                 height: 18px;
             }
             .style3
             {
                 width: 1322307px;
                 height: 18px;
             }
           </style>
    </head>
    <body>
        <form id="form1" runat="server">
        <div class="container">
      <img  class="logo" src="../image/index_02.gif">
      <div class="header">
      <table class="table" border="0" style="width: 82%; height:46px">
                                        <tr>
                                            <td class="style1">
                                                </td>
                                            <td class="style1">
                                                <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="15pt" ForeColor="Black"
                                                                Width="183px" CausesValidation="False" 
                                                    OnClick="LinkButton4_Click">用户信息管理</asp:LinkButton></td>
                                            <td class="style1">
                                                </td>
                                            <td class="style1">
                                                <asp:LinkButton ID="LinkButton5" runat="server" Font-Size="15pt" ForeColor="Black"
                                                                Width="208px" CausesValidation="False" 
                                                    OnClick="LinkButton5_Click">修改当前用户信息</asp:LinkButton></td>
                                            <td class="style1">
                                                </td>
                                            <td class="style1">
                                                <asp:LinkButton ID="LinkButton6" runat="server" Font-Size="15pt" 
                                                    ForeColor="Black" Width="184px" CausesValidation="False" 
                                                    OnClick="LinkButton6_Click">用户信息查询 </asp:LinkButton></td>
                                            <td class="style1">
                                                </td>
                                            <td class="style2">
                                                <asp:LinkButton ID="LinkButton7" runat="server" Font-Size="15pt" ForeColor="Black"
                                                                Width="138px" CausesValidation="False" 
                                                    OnClick="LinkButton7_Click">用户登录</asp:LinkButton></td>
                                            <td class="style2">
                                                </td>
                                            <td class="style1">
                                                <asp:LinkButton ID="lbtnsy" runat="server" Font-Size="15pt" OnClick="lbtnsy_Click"
                                                                Width="80px" CausesValidation="False" ForeColor="Black">返回首页</asp:LinkButton></td>
                                            <td class="style3">
                                                </td>
                                        </tr>
                                    </table>
      </div>
     <div class="main">

     <div>
                <div>
                    <div style="text-align: center">
                    <div>
                    </div>
                        <table style="width: 714px" >
                          
                            <tr>
                                <td style="height: 11px; width: 96px;">
                                    
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 11px; width: 96px;">
                                    &nbsp; </td>
                            </tr>
                            <tr>
                                <td style="height: 331px; width: 96px;" align="center" valign="top">
                         
                                    <table style="height: 443px; width: 998px;">
                                        <tr>
                                            <td colspan="1" style="height: 12px; width: 107px;">
                                            </td>
                                            <td colspan="3" style="height: 12px">
                                            </td>
                                            <td colspan="1" style="height: 12px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height: 16px; width: 107px;">
                                            </td>
                                            <td style="height: 16px; width: 89px;">
                                            </td>
                                            <td style="height: 16px; width: 101px;">
                                                <asp:Label ID="Label2" runat="server" Font-Names="华文新魏" Font-Size="20pt" ForeColor="Brown"
                                                           Text="用户登录" Width="489px" Font-Bold="True"></asp:Label></td>
                                            <td style="height: 16px; width: 100px;" align="center">
                                            </td>
                                            <td align="center" style="height: 16px; width: 100px;">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height: 4px; width: 107px;">
                                            </td>
                                            <td style="height: 4px; width: 89px;" align="center">
                                            </td>
                                            <td style="width: 101px;" align="center" rowspan="5">
                                                <div style="text-align: center" align="center">
                                                    &nbsp;</div>
                                                <div style="text-align: center">
                                                    <table border="0" style="width:400px; height: 330px;">
                                                        <tr>
                                                            <td align="left" style="width: 81px">
                                                            </td>
                                                            <td style="width: 105px" align="left">
                                                                &nbsp;&nbsp;
                                                                <asp:Label ID="Label1" runat="server" Height="37px" Text="用户姓名：" Width="134px" 
                                                                    Font-Bold="True" Font-Names="华文新魏" Font-Size="X-Large"></asp:Label></td>
                                                            <td style="width: 100px">
                                                                <asp:TextBox ID="txtyhm" runat="server" Height="28px"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="rfvyhm" runat="server" ControlToValidate="txtyhm"
                                                                                            Display="Dynamic" ErrorMessage="用户名称不能为空" Font-Bold="False" Font-Size="Medium"
                                                                                            Width="156px" Font-Names="华文行楷"></asp:RequiredFieldValidator></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right" style="width: 81px">
                                                            </td>
                                                            <td align="right" style="width: 105px">
                                                            </td>
                                                            <td style="width: 100px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right" style="width: 81px">
                                                            </td>
                                                            <td align="right" style="width: 105px">
                                                                &nbsp;
                                                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="华文新魏" Font-Size="X-Large"
                                                                           Text="用户密码：" Width="136px" Height="38px"></asp:Label></td>
                                                            <td style="width: 100px">
                                                                <asp:TextBox ID="txtyhmm" runat="server" TextMode="Password" Width="151px" 
                                                                    Height="29px"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="rfvyhmm" runat="server" ControlToValidate="txtyhmm"
                                                                                            Display="Dynamic" ErrorMessage="用户密码不能为空" Font-Bold="False" Font-Size="Medium"
                                                                                            Width="164px" Font-Names="华文行楷"></asp:RequiredFieldValidator></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 81px">
                                                            </td>
                                                            <td style="width: 105px">
                                                            </td>
                                                            <td style="width: 100px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="1" style="width: 81px">
                                                            </td>
                                                            <td colspan="2">
                                                                <asp:Button ID="btnOk" runat="server" Text="确定" OnClick="btnOk_Click" />
                                                                &nbsp; &nbsp; &nbsp; &nbsp;
                                                                <asp:Button ID="btncancel" runat="server" Text="取消" CausesValidation="False" OnClick="btncancel_Click" /></td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </td>
                                            <td style="font-family: Times New Roman; font-size: 12pt; height: 4px; width: 100px;">
                                                &nbsp;</td>
                                            <td style="font-family: Times New Roman; font-size: 12pt; height: 4px; width: 100px;">
                                            </td>
                                        </tr>
                                        <tr style="font-family: Times New Roman; font-size: 12pt;">
                                            <td align="right" style="width: 107px">
                                            </td>
                                            <td align="right" style="width: 89px">
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr style="font-family: Times New Roman; font-size: 12pt;">
                                            <td align="center" style="width: 107px">
                                            </td>
                                            <td style="width: 89px" align="center">
                                            </td>
                                            <td style="width: 100px" align="center">
                                                &nbsp;</td>
                                            <td align="center" style="width: 100px">
                                            </td>
                                        </tr>
                                        
                                       
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 58px" width="100%">
                                    <uc1:foot ID="Foot1" runat="server" />
                           
                                </td>
                            </tr>
                        </table>
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