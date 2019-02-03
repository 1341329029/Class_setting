<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dqyhxinxixg.aspx.cs" Inherits="xiangxixinxi" %>

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
                        .tab
                        {
                            color:White;
                        }
                         .style3
                        {
                            color:White;
                        }
            </style>
    </head>
    <body>
        <form id="form1" runat="server">
        <div class="container">
            <img  class="logo" src="../image/index_02.gif">
      <div class="header">
      <TABLE  class="table"style="WIDTH: 82%; height: 46px;" border=0><TBODY><TR><TD style="height: 25px; WIDTH: 483031px;">
          &nbsp;</TD><TD 
                                                        style="height: 25px; WIDTH: 99px;">
              <asp:LinkButton id="LinkButton2" runat="server" Width="195px" Font-Size="15pt" 
                  ForeColor="Black" OnClick="LinkButton2_Click" CausesValidation="False">用户信息管理</asp:LinkButton></TD>
<td style="height: 25px; width: 10120px;">
</td>
<TD 
    style="height: 25px; WIDTH: 100px;"><asp:LinkButton id="LinkButton3" 
        runat="server" Width="196px" Font-Size="15pt" ForeColor="Black" 
        OnClick="LinkButton3_Click" CausesValidation="False">修改当前用户信息</asp:LinkButton></TD>
<td style="height: 25px; width: 600px;">
</td>
<TD 
    style="height: 25px; WIDTH: 100px;"><asp:LinkButton id="LinkButton5" 
        runat="server" Width="191px" Font-Size="15pt" ForeColor="Black" 
        OnClick="LinkButton5_Click" CausesValidation="False">用户信息查询 </asp:LinkButton></TD><TD 
  style="height: 25px; WIDTH: 177px;"><asp:LinkButton id="LinkButton4" runat="server" 
                  Width="136px" Font-Size="15pt" ForeColor="Black" OnClick="LinkButton4_Click" 
                  CausesValidation="False">用户登录</asp:LinkButton></TD><TD 
                                                                                                                                                                                                                                                                                                                                                                                  style="height: 25px; WIDTH: 100px;">
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             <asp:LinkButton ID="lbtnsy" runat="server" Font-Size="15pt" ForeColor="Black" OnClick="lbtnsy_Click"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             Width="80px" CausesValidation="False">返回首页</asp:LinkButton></TD><TD 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 style="height: 25px; WIDTH: 6162940px;">
              &nbsp;</TD></TR></TBODY></TABLE>
      </div>
     <div class="main">
      <div>
                <div>
                    <div>
                        <div style="text-align: center">
                            <table  style="width: 714px">
                                
                                
                                <tr>
                                    <td align="center" class="style7">
                                        <table style="width: 1010px; height: 593px;">
                                            <tr>
                                                
                                                <td colspan="4" class="style2">
                                                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="华文新魏" Font-Size="X-Large"
                                                               ForeColor="DarkRed">当前用户信息修改</asp:Label><br />
                                                    <table  class="tab"style="width: 996px; height: 575px;">
                                                        <tr style="color: #000000; font-size: 12pt;">
                                                            <td  bgcolor="#3F5D79" class="style3">
                                                                用户姓名：</td>
                                                            <td class="style4">
                                                                <asp:TextBox ID="txtname" runat="server" Height="30px" Width="187px"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="Rfvname" runat="server" ControlToValidate="txtname"
                                                                                            Display="Dynamic" ErrorMessage="用户姓名不能为空" Font-Size="Small" Width="129px"></asp:RequiredFieldValidator></td>
                                                        </tr>
                                                        <tr style="font-size: 12pt">
                                                            <td  bgcolor="#3F5D79" style="width: 95px">
                                                                用户密码：</td>
                                                            <td style="width: 150px" align="left">
                                                                <asp:TextBox ID="txtpwd" runat="server" Height="33px" Width="186px"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="rfvpwd" runat="server" ControlToValidate="txtpwd"
                                                                                            Display="Dynamic" ErrorMessage="用户密码不能为空" Font-Size="Small" Width="129px"></asp:RequiredFieldValidator></td>
                                                        </tr>
                                                        <tr style="font-size: 12pt">
                                                            <td  bgcolor="#3F5D79" style="width: 95px">
                                                                英文姓名：</td>
                                                            <td style="width: 150px">
                                                                <asp:TextBox ID="txtywname" runat="server" Height="33px" Width="170px"></asp:TextBox></td>
                                                        </tr>
                                                        <tr style="font-size: 12pt">
                                                            <td  bgcolor="#3F5D79" style="width: 95px">
                                                                电子邮箱：</td>
                                                            <td style="width: 150px">
                                                                <asp:TextBox ID="txtemail" runat="server" Height="30px" Width="167px"></asp:TextBox></td>
                                                        </tr>
                                                        <tr style="font-size: 12pt">
                                                            <td  bgcolor="#3F5D79" style="height: 19px; width: 95px;">
                                                                头像：</td>
                                                            <td align="center" style="height: 19px; width: 150px;">
                                                                <asp:DropDownList ID="ddltouxiang" runat="server" AutoPostBack="True" ForeColor="Red" OnSelectedIndexChanged="ddltouxiang_SelectedIndexChanged"
                                                                    >
                                                                </asp:DropDownList>
                                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                                                <asp:Image ID="imgtouxiang" runat="server" Height="118px" Width="116px" />&nbsp;
                                                            </td>
                                                        </tr>
                                                        <tr style="font-size: 12pt">
                                                            <td  bgcolor="#3F5D79" class="style5">
                                                            </td>
                                                            <td class="style6">
                                                                <asp:Button ID="Button3" runat="server" OnClick="Button1_Click" Text="保存" Width="45px" Height="22px" />
                                                                &nbsp;&nbsp;
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" Font-Size="Small"
                                                                                ForeColor="Blue" OnClick="LinkButton1_Click" >返回首页</asp:LinkButton>&nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                           
                                        </table>
                                    </td>
                                </tr>
                                
                                <tr style="font-size: 12pt">
                                    <td style="height: 19px" align="center" width="100%">
                                        <uc1:foot ID="Foot1" runat="server" />
                                    </td>
                                </tr>
                                <tr style="font-size: 12pt">
                                    <td style="height: 19px; width: 96px;">
                                    </td>
                                </tr>
                            </table>
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