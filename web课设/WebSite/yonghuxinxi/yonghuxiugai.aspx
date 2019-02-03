<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yonghuxiugai.aspx.cs" Inherits="yonghuxiugai" %>

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
          </style>
    </head>
    <body>
        <form id="form1" runat="server">
        <div class="container">
      <img  class="logo" src="../image/index_02.gif">
      <div class="header">
       <table border="0"class="table"  style="width: 80%; height: 44px;">
                                            <tr>
                                                <td style="width: 166px">
                                                    &nbsp;</td>
                                                <td style="width: 100px">
                                                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="15pt" ForeColor="Black"
                                                                    OnClick="LinkButton2_Click" Width="146px" 
                                                        CausesValidation="False">用户信息管理</asp:LinkButton></td>
                                                <td style="width: 100px">
                                                    &nbsp;</td>
                                                <td style="width: 100px">
                                                    <asp:LinkButton ID="LinkButton4" runat="server"  Font-Size="15pt" ForeColor="Black"
                                                                    OnClick="LinkButton3_Click" Width="179px" 
                                                        CausesValidation="False" Height="21px">修改当前用户信息</asp:LinkButton></td>
                                                <td style="width: 100px">
                                                    &nbsp;</td>
                                                <td style="width: 100px">
                                                    <asp:LinkButton ID="LinkButton5" runat="server"  Font-Size="15pt" 
                                                        ForeColor="Black" Width="143px" OnClick="LinkButton5_Click">用户信息查询 </asp:LinkButton></td>
                                                <td style="width: 100px">
                                                    &nbsp;</td>
                                                <td style="width: 100px">
                                                    <asp:LinkButton ID="LinkButton6" runat="server"  Font-Size="15pt" ForeColor="Black"
                                                                    Width="156px" OnClick="LinkButton6_Click" 
                                                        CausesValidation="False">用户登录</asp:LinkButton></td>
                                                <td style="width: 100px">
                                                    &nbsp;</td>
                                                <td style="width: 122px">
                                                    <asp:LinkButton ID="LinkButton3" runat="server"  Font-Size="15pt" ForeColor="Black"
                                                                    OnClick="LinkButton3_Click" Width="80px" CausesValidation="False">返回首页</asp:LinkButton></td>
                                                <td style="width: 1871px">
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
      </div>
     <div class="main">

      <div>
                <div>
                    <div>
                        <div style="text-align: center">
                        <div>  </div>
                            <table  style="width: 969px; height: 903px;">
                                
                                <tr>
                                    <td align="center" style="height: 17px; width: 90px;">
                                        &nbsp;<table style="height: 572px; width: 994px;">
                                                  
                                                  
                                                  <tr>
                                                      <td align="center" style="height: 4px; width: 107px;">
                                                      </td>
                                                      <td align="center" style="height: 4px; width: 89px;">
                                                      </td>
                                                      <td align="center" rowspan="5" style="width: 100px">
                                                          <table style="width: 680px; height: 570px;">
                                                              <tr>
                                                                  <td  colspan="2">
                                                                      &nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="华文新魏" Font-Size="X-Large"
                                                                                       ForeColor="SandyBrown">用户信息修改</asp:Label></td>
                                                              </tr>
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
                                                                                                  Display="Dynamic" ErrorMessage="用户密码不能为空" Font-Size="Small" Width="133px"></asp:RequiredFieldValidator></td>
                                                              </tr>
                                                              <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                                  <td  style="width: 121px">
                                                                      英文姓名：</td>
                                                                  <td style="width: 150px">
                                                                      <asp:TextBox ID="txtywname" runat="server"></asp:TextBox></td>
                                                              </tr>
                                                              <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                                  <td  style="width: 121px">
                                                                      电子邮箱：</td>
                                                                  <td style="width: 150px">
                                                                      <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
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
                                                                                               <asp:DropDownList ID="ddltouxiang" runat="server" AutoPostBack="True" ForeColor="Red" OnSelectedIndexChanged="ddltouxiang_SelectedIndexChanged"
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
                                                                      <asp:Button ID="Button1" runat="server"  Text="保存" Width="39px" OnClick="Button1_Click" />
                                                                      &nbsp;&nbsp;
                                                                      <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Small" ForeColor="Blue"
                                                                                      OnClick="LinkButton1_Click" CausesValidation="False">返回首页</asp:LinkButton>&nbsp;</td>
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
                                                      <td style="width: 107px">
                                                      </td>
                                                      <td style="width: 89px">
                                                      </td>
                                                      <td style="width: 100px">
                                                      </td>
                                                  </tr>
                                                  
                                                
                                            
                                              </table>
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