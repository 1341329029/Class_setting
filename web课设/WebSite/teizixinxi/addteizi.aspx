<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addteizi.aspx.cs" Inherits="addteizi" %>

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
                  height: 888px;
                  background-color: white;
                  margin-top: 70px;
                  border-radius: 8px;
                        }
                        .container{
                      margin: auto;
                      width: 1513px;
                      height: 1295px;
                      background-color: #3F5D79;
                    }
              .style1
              {
                  height: 47px;
              }
              .style2
              {
                  width: 36px;
                  height: 34px;
              }
              .style3
              {
                  width: 100px;
                  height: 34px;
              }
              .style4
              {
                  width: 107px;
                  height: 102px;
              }
              .style5
              {
                  width: 81px;
                  height: 102px;
              }
              .style6
              {
                  width: 36px;
                  height: 96px;
              }
              .style7
              {
                  width: 100px;
                  height: 96px;
              }
          </style>
    </head>
    <body background="image/background.gif">
        <form id="form1" runat="server">
        <div class="container">
    <img  class="logo" src="../image/index_02.gif">
      <div class="header">
       <table class="table"border="0" style="width: 82%; height: 46px;">
                                <tr>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="15pt" ForeColor="Black"
                                                        Width="174px" CausesValidation="False">用户信息管理</asp:LinkButton></td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="15pt" ForeColor="Black"
                                                        OnClick="LinkButton3_Click" Width="205px" 
                                            CausesValidation="False">修改当前用户信息</asp:LinkButton></td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        <asp:LinkButton ID="LinkButton5" runat="server" Font-Size="15pt" ForeColor="Black"
                                                        Width="175px" CausesValidation="False" 
                                            OnClick="LinkButton5_Click">用户信息查询 </asp:LinkButton></td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 177px">
                                        <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="15pt" ForeColor="Black"
                                                        Width="103px" CausesValidation="False" 
                                            OnClick="LinkButton4_Click">用户登录</asp:LinkButton></td>
                                    <td style="width: 177px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        <asp:LinkButton ID="lbtnsy" runat="server" CausesValidation="False" 
                                            Font-Size="15pt" ForeColor="Black"
                                                        OnClick="lbtnsy_Click" Width="103px">返回首页</asp:LinkButton></td>
                                    <td style="width: 806064px">
                                        &nbsp;</td>
                                </tr>
                            </table>
      </div>
     <div class="main">
      <div style="text-align: center">
                <table  style="width: 734px">
                    <tr>
                        <td style="width: 95px">
                            
                                        &nbsp;</td>
                    </tr>
                    <tr style="font-family: Times New Roman">
                        <td align="center" style="width: 95px">
                            <table style="height: 614px; width: 1001px;">
                                <tr>
                                    <td style="height: 16px; width: 107px;">
                                    </td>
                                    <td colspan="2" style="height: 16px">
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                    </td>
                                    <td align="center" style="height: 16px; width: 81px;">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="height: 4px; width: 107px;">
                                    </td>
                                    <td align="center" colspan="2" rowspan="5">
                                        <table style="width: 805px; height: 518px;" align="center" >
                                            <tr>
                                                <td align="center" colspan="2" bgcolor="#3F5D79">
                                                    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="发表新帖子" Font-Bold="True" ForeColor="White"></asp:Label></td>
                                            </tr>
                                            <tr style="color: #000000; font-size: 12pt;">
                                                <td align="left" bgcolor="#3F5D79" class="style2">
                                                    <asp:Label ID="lblname" runat="server"  Text="用户名：" Width="79px" 
                                                        ForeColor="White"></asp:Label></td>
                                                <td class="style3">
                                                    &nbsp;&nbsp;
                                                    <asp:Label ID="lblyhm" runat="server" Text="Label"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td align="center" bgcolor="#3F5D79" class="style6">
                                                    <asp:Label ID="lbltitle" runat="server"  Text="标　题：" 
                                                        Width="92px" ForeColor="White"></asp:Label></td>
                                                <td class="style7">
                                                    <asp:TextBox ID="txtbt" runat="server" Width="303px" Height="34px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfvbt" runat="server" ControlToValidate="txtbt" Display="Dynamic"
                                                                                ErrorMessage="标题不能为空" Font-Size="Small"></asp:RequiredFieldValidator></td>
                                            </tr>
                                            <tr>
                                                <td align="center" bgcolor="#3F5D79" style="height: 80px; width: 36px;">
                                                    <asp:Label ID="lblnr" runat="server"  Text="具体内容：" Width="94px" 
                                                        ForeColor="White"></asp:Label></td>
                                                <td align="left" style="height: 80px; width: 100px;">
                                                    <asp:TextBox ID="txtnr" runat="server" Height="119px" TextMode="MultiLine" 
                                                        Width="443px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtnr"
                                                                                Display="Dynamic" ErrorMessage="内容不能为空" Font-Size="Small"></asp:RequiredFieldValidator></td>
                                            </tr>
                                            <tr>
                                                <td align="center" bgcolor="#3F5D79" style="height: 22px; width: 36px;">
                                                </td>
                                                <td align="center" style="height: 22px; width: 100px;">
                                                    &nbsp; &nbsp;
                                                    <div style="text-align: center">
                                                        <table>
                                                            <tr>
                                                                <td style="width: 296px">
                                                                    <asp:Button ID="Button2" runat="server" Text="保存" OnClick="Button2_Click" /></td>
                                                                <td style="width: 238px">
                                                                    <asp:Button ID="Button1" runat="server" Text="重写" CausesValidation="False" 
                                                                        Width="49px" /></td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" bgcolor="#3F5D79" colspan="2" class="style1">
                                                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="15pt" ForeColor="white"
                                                                    OnClick="LinkButton1_Click" CausesValidation="False">返回首页</asp:LinkButton></td>
                                            </tr>
                                        </table>
                                        &nbsp;</td>
                                    <td style="font-family: Times New Roman; font-size: 12pt; height: 4px; width: 81px;">
                                        &nbsp;</td>
                                </tr>
                                <tr style="font-family: Times New Roman; font-size: 12pt;">
                                    <td align="right" style="width: 107px">
                                    </td>
                                    <td style="width: 81px">
                                    </td>
                                </tr>
                                <tr style="font-family: Times New Roman; font-size: 12pt;">
                                    <td align="center" style="width: 107px">
                                    </td>
                                    <td align="center" style="width: 81px">
                                        &nbsp;</td>
                                </tr>
                                <tr style="font-family: Times New Roman; font-size: 12pt;">
                                    <td style="height: 30px; width: 107px;">
                                    </td>
                                    <td style="height: 30px; width: 81px;">
                                    </td>
                                </tr>
                                <tr style="font-family: Times New Roman; font-size: 12pt;">
                                    <td class="style4">
                                    </td>
                                    <td class="style5">
                                    </td>
                                </tr>
                               
                                   
                                <tr style="font-family: Times New Roman; font-size: 12pt;">
                                    <td colspan="1" style="width: 107px">
                                    </td>
                                   
                            </table>
                        </td>
                    </tr>
                    <tr style="font-family: Times New Roman; font-size: 12pt;">
                        <td style="width: 95px">
                            <uc1:foot ID="Foot2" runat="server" />
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