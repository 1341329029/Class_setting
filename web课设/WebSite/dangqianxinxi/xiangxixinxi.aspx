<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xiangxixinxi.aspx.cs" Inherits="xiangxixinxi" %>

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
                        .style8
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
       <table class="table" border="0" style="width: 82%; height: 47px;">
                                            <tr>
                                                <td style="width: 100px">
                                                    &nbsp;</td>
                                                <td style="width: 100px">
                                                    <asp:LinkButton ID="lyhgl" runat="server" Font-Size="15pt" ForeColor="Black"
                                                                    Width="178px" CausesValidation="False">用户信息管理</asp:LinkButton></td>
                                                <td style="width: 100px">
                                                    &nbsp;</td>
                                                <td style="width: 100px">
                                                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="15pt" ForeColor="Black"
                                                                    OnClick="LinkButton3_Click" Width="200px" 
                                                        CausesValidation="False">修改当前用户信息</asp:LinkButton></td>
                                                <td style="width: 100px">
                                                    &nbsp;</td>
                                                <td style="width: 100px">
                                                    <asp:LinkButton ID="LinkButton5" runat="server"  Font-Size="15pt" ForeColor="Black"
                                                                    Width="156px" OnClick="LinkButton5_Click" 
                                                        CausesValidation="False">用户信息查询 </asp:LinkButton></td>
                                                <td style="width: 100px">
                                                    &nbsp;</td>
                                                <td style="width: 177px">
                                                    <asp:LinkButton ID="LinkButton4" runat="server"  Font-Size="15pt" ForeColor="Black"
                                                                    Width="127px" OnClick="LinkButton4_Click" 
                                                        CausesValidation="False">用户登陆</asp:LinkButton></td>
                                                <td style="width: 177px">
                                                    &nbsp;</td>
                                                <td style="width: 333px">
                                                    <asp:LinkButton ID="lbtnsy" runat="server" Font-Size="15pt" ForeColor="Black" OnClick="lbtnsy_Click"
                                                                    Width="80px" CausesValidation="False">返回首页</asp:LinkButton></td>
                                                <td style="width: 815121px">
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
                                    <td align="center" style="width: 90px">
                                        
                                                    &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" style="height: 17px; width: 90px;">
                                        &nbsp;<table 
                                            style="height: 432px; width: 999px;">
                                                
                                                  <tr>
                                                      
                                                      
                                                    
                                                      <td align="center" rowspan="5" style="width: 100px">
                                                          <table  class="tab"
                                                              style="font-family: Times New Roman; width: 992px; height: 588px;">
                                                              <tr style="color: #000000; font-size: 12pt;">
                                                                  <td colspan="2" style="height: 22px">
                                                                      <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="华文新魏" Font-Size="X-Large"
                                                                                 ForeColor="Brown">当前用户信息详情</asp:Label></td>
                                                              </tr>
                                                              <tr style="color: #000000; font-family: Times New Roman; font-size: 12pt;">
                                                                  <td  bgcolor="#3F5D79" class="style8">
                                                                      用户姓名：</td>
                                                                  <td class="style9">
                                                                      <asp:Label ID="lblywname" runat="server" Text="Label"></asp:Label></td>
                                                              </tr>
                                                              <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                                  <td  bgcolor="#3F5D79" class="style10">
                                                                      用户密码：</td>
                                                                  <td class="style11">
                                                                      &nbsp;<asp:Label 
                                                                          ID="lblyhpwd" runat="server" Text="Label" ForeColor="Black"></asp:Label></td>
                                                              </tr>
                                                              <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                                  <td  bgcolor="#3F5D79" class="style6">
                                                                      英文姓名：</td>
                                                                  <td class="style7">
                                                                      &nbsp;<asp:Label 
                                                                          ID="lblyhname" runat="server" Text="Label" ForeColor="Black"></asp:Label></td>
                                                              </tr>
                                                              <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                                  <td  bgcolor="#3F5D79" class="style12">
                                                                      电子邮箱：</td>
                                                                  <td class="style13">
                                                                      &nbsp;<asp:Label 
                                                                          ID="lblyhyx" runat="server" Text="Label" ForeColor="Black"></asp:Label></td>
                                                              </tr>
                                                              <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                                  <td align="center" bgcolor="#3F5D79" style="height: 19px; width: 133px;">
                                                                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 头像：</td>
                                                                  <td align="center" style="height: 19px; width: 150px;">
                                                                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                                      <asp:Image ID="imgtouxiang" runat="server" Height="118px" Width="116px" />&nbsp;
                                                                  </td>
                                                              </tr>
                                                              <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                                  <td  bgcolor="#3F5D79" colspan="2" class="style14">
                                                                      &nbsp;
                                                                      &nbsp;&nbsp;
                                                                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" Font-Size="Small"
                                                                                      ForeColor="Blue" OnClick="LinkButton1_Click" >返回首页</asp:LinkButton>&nbsp;</td>
                                                              </tr>
                                                          </table>
                                                      </td>
                                                      <td style="font-family: Times New Roman; font-size: 12pt; height: 4px; width: 100px;">
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