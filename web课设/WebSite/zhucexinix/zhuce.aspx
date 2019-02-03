<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhuce.aspx.cs" Inherits="zhuce" %>

<%@ Register Src="../UserControl/foot.ascx" TagName="foot" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
        <link rel="stylesheet" type="text/css" href="../css/index.css"/>
        <title>贼厉害网上论坛</title>
        <style type="text/css">
              .table
           {
               margin-left:640px;
           }
            .style1
            {
                width: 100px;
                height: 48px;
            }
            .style2
            {
                width: 177px;
                height: 48px;
            }
            .style3
            {
                width: 815121px;
                height: 48px;
            }
            .style5
            {
                height: 22px;
                width: 292px;
            }
            .style6
            {
                width: 292px;
                height: 68px;
            }
            .style7
            {
                height: 19px;
                width: 292px;
            }
            .style8
            {
                height: 21px;
                width: 292px;
            }
            .style13
            {
                width: 172px;
                height: 55px;
            }
            .style14
            {
                width: 292px;
                height: 55px;
            }
            .style16
            {
                width: 292px;
                height: 48px;
            }
            .style17
            {
                width: 172px;
                height: 68px;
            }
            .style18
            {
                height: 40px;
            }
            .style19
            {
                width: 107px;
                height: 97px;
            }
            .style20
            {
                width: 89px;
                height: 97px;
            }
            .style21
            {
                width: 100px;
                height: 97px;
            }
            .style22
            {
                width: 90px;
                height: 5px;
            }
            #ddltouxiang
            {
                position: absolute;
                left: 776px;
            }
            #imgtouxiang
            {
                margin-left: 229px;
                }
           #Foot2_Image1
           {
               margin-top: -20px;
           }
            .style23
            {
                height: 22px;
                width: 172px;
            }
            .style24
            {
                height: 19px;
                width: 172px;
            }
            .style25
            {
                height: 21px;
                width: 172px;
            }
            .style26
            {
                width: 172px;
                height: 48px;
            }
        </style>
    </head>
    <body>
        <form id="form1" runat="server">
        <div class="container">
     <img  class="logo" src="../image/index_02.gif">
      <div class="header">
      <table border="0" class="table"style="width: 82%">
                                            <tr>
                                                <td class="style1">
                                                    </td>
                                                <td class="style1">
                                                    <asp:LinkButton ID="lyhgl" runat="server" Font-Size="15pt" 
                                                                    Width="186px" OnClick="lyhgl_Click" CausesValidation="False" 
                                                        ForeColor="Black">用户信息管理</asp:LinkButton></td>
                                                <td class="style1">
                                                    </td>
                                                <td class="style1">
                                                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="15pt" 
                                                                    Width="231px" OnClick="LinkButton3_Click" 
                                                        CausesValidation="False" ForeColor="Black">修改当前用户信息</asp:LinkButton></td>
                                                <td class="style1">
                                                    </td>
                                                <td class="style1">
                                                    <asp:LinkButton ID="LinkButton5" runat="server" Font-Size="15pt" Width="176px" 
                                                        OnClick="LinkButton5_Click" CausesValidation="False" ForeColor="Black">用户信息查询 </asp:LinkButton></td>
                                                <td class="style1">
                                                    </td>
                                                <td class="style2">
                                                    <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="15pt" 
                                                                    Width="121px" OnClick="LinkButton4_Click" 
                                                        CausesValidation="False" ForeColor="Black">用户登录</asp:LinkButton></td>
                                                <td class="style2">
                                                    </td>
                                                <td class="style1">
                                                    <asp:LinkButton ID="lbtnsy" runat="server" Font-Size="15pt" OnClick="lbtnsy_Click"
                                                                    Width="80px" CausesValidation="False" ForeColor="Black">返回首页</asp:LinkButton></td>
                                                <td class="style3">
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
      </div>
     <div class="main">

     <div>

                <div>
                    <div>
                        <div style="text-align: center">
                       
                            <table  style="width: 714px">
                              
                               
                                <tr>
                                    <td align="center" class="style22">
                                        &nbsp;<table 
                                            style="height: 449px; width: 1009px;">
                                                  <tr>
                                                      <td colspan="4" style="background-image: url(../image/zhu ti 2.gif); height: 20px;" align="left" valign="middle" bgcolor="#ff9933">
                                                          <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#404040"
                                                                     Text="新用户注册" Font-Names="华文新魏"></asp:Label>
                                                          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                          </td>
                                                  </tr>
                                                 
                                                  <tr>
                                                      <td align="center" style="height: 4px; width: 107px;">
                                                      </td>
                                                      <td align="center" style="height: 4px; width: 89px;">
                                                      </td>
                                                      <td align="center" rowspan="5" style="width: 100px">
                                                          <table style="width: 593px; height: 342px;" >
                                                             
                                                              <tr style="color: #000000; font-family: Times New Roman; font-size: 12pt;">
                                                                  <td class="style23">
                                                                      用户姓名：</td>
                                                                  <td class="style5">
                                                                      <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                                                                      <asp:RequiredFieldValidator ID="Rfvname" runat="server" ControlToValidate="txtname"
                                                                                                  Display="Dynamic" ErrorMessage="用户姓名不能为空" Font-Size="Small" Width="129px"></asp:RequiredFieldValidator></td>
                                                              </tr>
                                                              <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                                  <td class="style26">
                                                                      用户密码：</td>
                                                                  <td class="style16">
                                                                      <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" Width="147px"></asp:TextBox>
                                                                      <asp:RequiredFieldValidator ID="rfvpwd" runat="server" ControlToValidate="txtpwd"
                                                                                                  Display="Dynamic" ErrorMessage="用户密码不能为空" Font-Size="Small" Width="131px"></asp:RequiredFieldValidator></td>
                                                              </tr>
                                                              <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                                  <td class="style13">
                                                                      英文姓名：</td>
                                                                  <td class="style14">
                                                                      <asp:TextBox ID="txtywname" runat="server"></asp:TextBox>
                                                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtywname"
                                                                                                  Display="Dynamic" ErrorMessage="英文姓名不能为空" Font-Size="Small"></asp:RequiredFieldValidator></td>
                                                              </tr>
                                                              <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                                  <td class="style17">
                                                                      电子邮箱：</td>
                                                                  <td class="style6">
                                                                      <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                                                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="电子邮箱不能为空" ControlToValidate="txtemail" Display="Dynamic" Font-Size="Small"></asp:RequiredFieldValidator></td>
                                                              </tr>
                                                              <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                                  <td class="style24">
                                                                      头像：</td>
                                                                  <td align="center" class="style7">
                                                                      <asp:DropDownList ID="ddltouxiang" runat="server" AutoPostBack="True" ForeColor="Red"
                                                                                        OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" 
                                                                          Width="138px" Height="16px">
                                                                      </asp:DropDownList>
                                                                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                                                  </td>
                                                              </tr>
                                                              <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                                  <td colspan="2" class="style18">
                                                                      <asp:Image ID="imgtouxiang" runat="server" Height="118px" Width="116px" /></td>
                                                              </tr>
                                                              <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                                  <td class="style25">
                                                                  </td>
                                                                  <td class="style8">
                                                                      <asp:Button ID="btnok" runat="server" OnClick="Button1_Click" Text="保存" Width="39px" />
                                                                      &nbsp; &nbsp; &nbsp;
                                                                  </td>
                                                              </tr>
                                                          </table>
                                                      </td>
                                                      <td style="font-family: Times New Roman; font-size: 12pt; height: 4px; width: 100px;">
                                                          &nbsp;</td>
                                                  </tr>
                                                  <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                      <td align="right" style="width: 107px">
                                                      </td>
                                                      <td align="right" style="width: 89px">
                                                      </td>
                                                      <td style="width: 100px">
                                                      </td>
                                                  </tr>
                                                  <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                      <td align="center" style="width: 107px">
                                                      </td>
                                                      <td align="center" style="width: 89px">
                                                      </td>
                                                      <td align="center" style="width: 100px">
                                                          &nbsp;</td>
                                                  </tr>
                                                  <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                      <td style="height: 30px; width: 107px;">
                                                      </td>
                                                      <td style="height: 30px; width: 89px;">
                                                      </td>
                                                      <td style="height: 30px; width: 100px;">
                                                      </td>
                                                  </tr>
                                                  <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                      <td class="style19">
                                                      </td>
                                                      <td class="style20">
                                                      </td>
                                                      <td class="style21">
                                                      </td>
                                                  </tr>
                                                
                                              </table>
                                    </td>
                                </tr>
                                <tr style="font-family: Times New Roman; font-size: 12pt;">
                                    <td align="center" style="height: 17px; width: 90px;">
                                    </td>
                                </tr>
                                <tr style="font-family: Times New Roman; font-size: 12pt;">
                                    <td align="center" style="height: 17px; width: 90px;">
                                        <uc1:foot ID="Foot2" runat="server" />
                                    </td>
                                </tr>
                                <tr style="font-family: Times New Roman; font-size: 12pt;">
                                    <td align="center" style="width: 90px">
                                        &nbsp;</td>
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