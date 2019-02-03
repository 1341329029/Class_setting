<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yonghuadd.aspx.cs" Inherits="yonghuxinxi_yonghuadd" %>

<%@ Register Src="../UserControl/foot.ascx" TagName="foot" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
          <title>贼厉害网上论坛</title>
        <link rel="stylesheet" type="text/css" href="../css/index.css"/>
          <style type="text/css">
              .style1
              {
                  width: 166px;
                  height: 44px;
              }
              .style2
              {
                  width: 100px;
                  height: 44px;
              }
              .style3
              {
                  width: 122px;
                  height: 44px;
              }
              .style4
              {
                  width: 1871px;
                  height: 44px;
              }
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
              .style5
              {
                  width: 107px;
                  height: 84px;
              }
              .style7
              {
                  width: 100px;
                  height: 84px;
              }
              .style8
              {
                  height: 27px;
                  width: 21px;
              }
              .style9
              {
                  height: 4px;
                  width: 21px;
              }
              .style10
              {
                  width: 21px;
              }
              .style11
              {
                  height: 30px;
                  width: 21px;
              }
              .style12
              {
                  width: 21px;
                  height: 84px;
              }
          </style>
    </head>
    <body>
        <form id="form1" runat="server">
        <div class="container">
      <img  class="logo" src="../image/index_02.gif">
      <div class="header">
     <table border="0"class="table" style="width: 60%">
                                            <tr>
                                                <td class="style1">
                                                    </td>
                                                <td class="style2">
                                                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="15pt" ForeColor="Black"
                                                                    Width="199px" CausesValidation="False">用户信息管理</asp:LinkButton></td>
                                                <td class="style2">
                                                    </td>
                                                <td class="style2">
                                                    <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="15pt" ForeColor="Black"
                                                                    Width="203px" CausesValidation="False" 
                                                        OnClick="LinkButton4_Click">修改当前用户信息</asp:LinkButton></td>
                                                <td class="style2">
                                                    </td>
                                                <td class="style2">
                                                    <asp:LinkButton ID="LinkButton5" runat="server" Font-Size="15pt" 
                                                        ForeColor="Black" Width="141px" CausesValidation="False" 
                                                        OnClick="LinkButton5_Click">用户信息查询 </asp:LinkButton></td>
                                                <td class="style2">
                                                    </td>
                                                <td class="style2">
                                                    <asp:LinkButton ID="LinkButton6" runat="server" Font-Size="15pt" ForeColor="Black"
                                                                    Width="124px" CausesValidation="False" 
                                                        OnClick="LinkButton6_Click">用户登录</asp:LinkButton></td>
                                                <td class="style2">
                                                    </td>
                                                <td class="style3">
                                                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="15pt" ForeColor="Black"
                                                                    Width="80px" CausesValidation="False" OnClick="LinkButton3_Click">返回首页</asp:LinkButton></td>
                                                <td class="style4">
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
      </div>
     <div class="main">
    
            <div style="text-align: center" align="center">
            </div>
            <div>
                <div>
                    <div>
                        <div style="text-align: center">
                            <table style="width: 714px">
                               
                                <tr>
                                    <td align="center" style="width: 90px">
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="height: 17px; width: 90px;">
                                        &nbsp;<table 
                                            style="height: 523px; width: 996px;">
                                                  <tr>
                                                      <td colspan="1" style="height: 16px; width: 107px;">
                                                      </td>
                                                      <td colspan="3" style="height: 16px">
                                                      </td>
                                                  </tr>
                                                  <tr>
                                                      <td style="height: 27px; width: 107px;">
                                                      </td>
                                                      <td class="style8">
                                                      </td>
                                                      <td style="height: 27px; width: 100px;" align="center" valign="top">
                                                          <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="华文新魏" Font-Size="X-Large"
                                                                     ForeColor="SandyBrown" Width="764px">用户信息添加</asp:Label></td>
                                                      <td align="center" style="height: 27px; width: 100px;">
                                                      </td>
                                                  </tr>
                                                  <tr>
                                                      <td align="center" style="height: 4px; width: 107px;">
                                                      </td>
                                                      <td align="center" class="style9">
                                                      </td>
                                                      <td align="center" rowspan="5" style="width: 100px">
                                                          <table  style="width: 766px; height: 487px;" align="center">
                                                              <tr style="color: #000000; font-family: Times New Roman; font-size: 12pt;">
                                                                  <td  style="height: 22px; width: 121px;">
                                                                      用户姓名：</td>
                                                                  <td style="height: 22px; width: 150px;">
                                                                      <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                                                                      <asp:RequiredFieldValidator ID="Rfvname" runat="server" ControlToValidate="txtname"
                                                                                                  Display="Dynamic" ErrorMessage="用户姓名不能为空" Font-Size="Small" Width="139px"></asp:RequiredFieldValidator></td>
                                                              </tr>
                                                              <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                                  <td  style="width: 121px">
                                                                      用户密码：</td>
                                                                  <td style="width: 150px">
                                                                      <asp:TextBox ID="txtpwd" runat="server"></asp:TextBox>
                                                                      <asp:RequiredFieldValidator ID="rfvpwd" runat="server" ControlToValidate="txtpwd"
                                                                                                  Display="Dynamic" ErrorMessage="用户密码不能为空" Font-Size="Small" Width="151px"></asp:RequiredFieldValidator></td>
                                                              </tr>
                                                              <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                                  <td  style="width: 121px">
                                                                      英文姓名：</td>
                                                                  <td style="width: 150px">
                                                                      <asp:TextBox ID="txtywname" runat="server"></asp:TextBox>
                                                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtywname"
                                                                                                  Display="Dynamic" ErrorMessage="英文姓名不能为空" Font-Size="Small"></asp:RequiredFieldValidator></td>
                                                              </tr>
                                                              <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                                  <td  style="width: 121px">
                                                                      电子邮箱：</td>
                                                                  <td style="width: 150px">
                                                                      <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                                                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail"
                                                                                                  Display="Dynamic" ErrorMessage="电子邮箱不能为空" Font-Size="Small"></asp:RequiredFieldValidator></td>
                                                              </tr>
                                                              <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                                  <td  style="height: 19px; width: 121px;">
                                                                      头像：</td>
                                                                  <td align="center" style="height: 19px; width: 150px;">
                                                                      &nbsp; &nbsp;<table border="0" style="width: 100%">
                                                                                       <tr>
                                                                                           <td style="width: 100px">
                                                                                               <asp:Image ID="imgtouxiang" runat="server" Height="118px" Width="116px" /></td>
                                                                                       </tr>
                                                                                       <tr>
                                                                                           <td style="width: 100px">
                                                                                               <asp:DropDownList ID="ddltouxiang" runat="server" AutoPostBack="True" ForeColor="Red" OnSelectedIndexChanged="ddltouxiang_SelectedIndexChanged" Width="112px"
                                                                                                   >
                                                                                               </asp:DropDownList></td>
                                                                                       </tr>
                                                                                   </table>
                                                                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                                                  </td>
                                                              </tr>
                                                              <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                                  <td  style="height: 21px; width: 121px;">
                                                                  </td>
                                                                  <td style="height: 21px; width: 150px;">
                                                                      <asp:Button ID="Button1" runat="server"  Text="保存" Width="51px" OnClick="Button1_Click" />
                                                                      &nbsp;&nbsp;
                                                                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" Font-Size="Small"
                                                                                      ForeColor="Blue" >返回首页</asp:LinkButton>&nbsp;</td>
                                                              </tr>
                                                          </table>
                                                      </td>
                                                      <td style="font-family: Times New Roman; font-size: 12pt; height: 4px; width: 100px;">
                                                          &nbsp;</td>
                                                  </tr>
                                                  <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                      <td align="right" class="style5">
                                                      </td>
                                                      <td align="right" class="style12">
                                                      </td>
                                                      <td class="style7">
                                                      </td>
                                                  </tr>
                                                  <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                      <td align="center" style="width: 107px">
                                                      </td>
                                                      <td align="center" class="style10">
                                                      </td>
                                                      <td align="center" style="width: 100px">
                                                          &nbsp;</td>
                                                  </tr>
                                                  <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                      <td style="height: 30px; width: 107px;">
                                                      </td>
                                                      <td class="style11">
                                                      </td>
                                                      <td style="height: 30px; width: 100px;">
                                                      </td>
                                                  </tr>
                                                  <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                      <td style="width: 107px">
                                                      </td>
                                                      <td class="style10">
                                                      </td>
                                                      <td style="width: 100px">
                                                      </td>
                                                  </tr>
                                                  <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                      <td colspan="1" style="width: 107px">
                                                      </td>
                                                      <td colspan="3">
                                                          &nbsp;</td>
                                                  </tr>
                                                
                                                      
                                              </table>
                                    </td>
                                </tr>
                                <tr style="font-family: Times New Roman; font-size: 12pt;">
                                    <td align="center" style="height: 17px; width: 90px;">
                                    </td>
                                </tr>
                                <tr style="font-family: Times New Roman; font-size: 12pt;">
                                    <td align="center" style="width: 90px">
                                        <uc1:foot ID="Foot2" runat="server" />
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
            <
        </form>
    </body>
</html>