<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhucexinxi.aspx.cs" Inherits="zhucexinxi" %>

<%@ Register Src="../UserControl/foot.ascx" TagName="foot" TagPrefix="uc1" %>







<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
        <title>贼厉害网上论坛</title>
        <link rel="stylesheet" type="text/css" href="../css/index.css"/>
        <style type="text/css">
            .style1
            {
                height: 25px;
                width: 299px;
            }
            .style2
            {
                height: 76px;
                width: 569px;
            }
            .style3
            {
                width: 1057px;
            }
            .style8
            {
                width: 569px;
            }
            .style9
            {
                height: 22px;
                width: 569px;
            }
            .style10
            {
                height: 4px;
                width: 444px;
            }
            .style11
            {
                height: 30px;
                width: 444px;
            }
            .style13
            {
                height: 4px;
                width: 1057px;
            }
            .table
           {
               margin-left:640px;
           }
            .Foot1_Image1
         {
             margin-top:-30px;
         }
            .style17
            {
                width: 444px;
            }
            .style21
            {
                height: 18px;
                width: 1057px;
            }
            .style22
            {
                height: 18px;
                width: 444px;
            }
            .style23
            {
                width: 569px;
                height: 29px;
            }
            .style24
            {
                width: 1057px;
                height: 83px;
            }
            .style25
            {
                width: 444px;
                height: 83px;
            }
            .style26
            {
                width: 313px;
                height: 83px;
            }
        </style>
    </head>
    <body background="../image/background.gif">
        <form id="form1" runat="server">
        <div class="container">
      <img  class="logo" src="../image/index_02.gif">
      <div class="header">
       <table  class="table" style="width: 100%; height: 50px;">
                                            <tr>
                                                <td class="style1">
                                                    &nbsp;</td>
                                                <td style="height: 25px; width: 100px;">
                                                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="15pt" ForeColor="Black"
                                                                    Width="185px" OnClick="LinkButton2_Click">用户信息管理</asp:LinkButton></td>
                                                <td style="height: 25px; width: 100px;">
                                                    &nbsp;</td>
                                                <td style="height: 25px; width: 101px;">
                                                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="15pt" ForeColor="Black"
                                                                    Width="203px" OnClick="LinkButton3_Click">修改当前用户信息</asp:LinkButton></td>
                                                <td style="height: 25px; width: 101px;">
                                                    &nbsp;</td>
                                                <td style="height: 25px; width: 100px;">
                                                    <asp:LinkButton ID="LinkButton5" runat="server" Font-Size="15pt" Width="147px" 
                                                        ForeColor="Black">用户信息查询 </asp:LinkButton></td>
                                                <td style="height: 25px; width: 100px;">
                                                    &nbsp;</td>
                                                <td style="height: 25px; width: 177px;">
                                                    <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="15pt" ForeColor="Black"
                                                                    Width="124px" OnClick="LinkButton4_Click" Height="17px">用户登录</asp:LinkButton></td>
                                                <td style="height: 25px; width: 177px;">
                                                    &nbsp;</td>
                                                <td style="height: 25px; width: 100px;">
                                                    <asp:LinkButton ID="lbtnsy" runat="server" Font-Size="15pt" OnClick="lbtnsy_Click"
                                                                    Width="101px" Height="21px" ForeColor="Black">返回首页</asp:LinkButton></td>
                                                <td style="height: 25px; width: 815121px;">
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
      </div>
     <div class="main">
      <div>
                <div>
                    <div>
                        <div style="text-align: center">
                            <table  style="width: 993px; height: 653px;">
                                <tr>
                                    <td style="width: 90px">
                                                    &nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="height: 17px; width: 90px;" align="right">
                                        &nbsp;<table 
                                            style="height: 398px; width: 804px;">
                                              
                                                      
                                                 
                                                  <tr>
                                                      <td align="center" class="style13">
                                                      </td>
                                                      <td align="center" class="style10">
                                                      </td>
                                                      <td align="center" rowspan="5" style="width: 100px">
                                                          <table class="min" style="width: 650px; height: 377px;">
                                                              <tr>
                                                                  <td class="style8">
                                                                      <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="华文新魏" 
                                                                          Font-Size="X-Large" Text="用户注册协议"></asp:Label></td>
                                                              </tr>
                                                              <tr>
                                                                  <td class="style8">
                                                                      <asp:Label ID="Label13" runat="server" Font-Names="华文行楷" Font-Size="Large" Text="为维护网上公共秩序和社会稳定,请您自觉遵守以下条款："></asp:Label></td>
                                                              </tr>
                                                              <tr style="color: #000000; font-family: Times New Roman; font-size: 12pt;">
                                                                  <td align="left" class="style9">
                                                                      <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="华文新魏"
                                                                                 Text="（一）不得利用本论坛进行商业广告宣传；" Width="325px" Height="48px"></asp:Label></td>
                                                              </tr>
                                                              <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                                  <td align="left" class="style8">
                                                                      <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="华文新魏"
                                                                                 Text="（二）不得利用本论坛发送非法文章；" Width="360px" Height="49px"></asp:Label></td>
                                                              </tr>
                                                              <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                                  <td align="left" class="style23">
                                                                      &nbsp;
                                                                      <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="华文新魏"
                                                                                 Text="(三）互相尊重，对自己的言论和行为负责；" Width="81%" Height="40px"></asp:Label></td>
                                                              </tr>
                                                              <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                                  <td align="left" class="style8">
                                                                      <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="华文新魏"
                                                                                 Text="（四）本论坛版权归XXXX公司，不得对本论坛进行转载或作为私用；" Width="557px" Height="26px" 
                                                                          BorderColor="White"></asp:Label></td>
                                                              </tr>
                                                              <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                                  <td class="style2">
                                                                      <asp:Button ID="btnty" runat="server" OnClick="btnty_Click" Text="我同意" Height="23px" Width="48px" />
                                                                      <asp:Button ID="btnbty" runat="server" OnClick="btnbty_Click" Text="不同意" Height="23px" Width="48px" /></td>
                                                              </tr>
                                                              </table>
                                                      </td>
                                                      <td style="font-family: Times New Roman; font-size: 12pt; height: 4px; width: 313px;">
                                                          &nbsp;</td>
                                                  </tr>
                                                  <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                      <td align="right" class="style3">
                                                      </td>
                                                      <td align="right" class="style17">
                                                      </td>
                                                      <td style="width: 313px">
                                                      </td>
                                                  </tr>
                                                  <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                      <td align="center" class="style21">
                                                      </td>
                                                      <td align="center" class="style22">
                                                      </td>
                                                  </tr>
                                                  <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                    
                                                      <td class="style11">
                                                      </td>
                                                      <td style="height: 30px; width: 313px;">
                                                      </td>
                                                  </tr>
                                                  <tr style="font-family: Times New Roman; font-size: 12pt;">
                                                      <td class="style24">
                                                      </td>
                                                      <td class="style25">
                                                      </td>
                                                      <td class="style26">
                                                      </td>
                                                  </tr>
                                                  </table>
                                    </td>
                                </tr>
                                <tr style="font-family: Times New Roman; font-size: 12pt;">
                                    <td align="center" style="height: 17px; width: 90px;">
                                        <uc1:foot ID="Foot1" runat="server" Width="995px" Height="180px" />
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