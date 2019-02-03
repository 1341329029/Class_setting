<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chakan.aspx.cs" Inherits="chakan" %>

<%@ Register Src="../UserControl/foot.ascx" TagName="foot" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
       <title>贼厉害网上论坛</title>
        <link rel="stylesheet" type="text/css" href="../css/index.css"/>
          <style type="text/css">
              .main{
                    float: left;
                width: 1023px;
                  margin-left: 250px;
                  height: 1525px;
                  background-color: white;
                  margin-top: 70px;
                  border-radius: 8px;
                        }
                        .container{
                      margin: auto;
                      width: 1513px;
                      height: 3005px;
                      background-color: #3F5D79;
                    }
                    .style1
              {
                  height: 20px;
              }
                    .style2
              {
                  height: 40px;
              }
              #tabht
              {
                  color:White;
              }
                    .style3
              {
                  width: 100px;
                  height: 233px;
              }
              .main
              {
                  
              }
                    .style4
              {
                  width: 235px;
              }
                    .style5
              {
                  height: 1px;
                  width: 317px;
              }
              .style6
              {
                  height: 25px;
                  width: 317px;
              }
              .style7
              {
                  height: 1px;
                  width: 252px;
              }
              .style8
              {
                  height: 25px;
                  width: 252px;
              }
                    .style9
              {
                  height: 1px;
                  width: 603px;
              }
              .style10
              {
                  height: 25px;
                  width: 603px;
              }
                    </style>
    </head>
    <body>
        <form id="form1" runat="server">
        <div class="container">
     <img  class="logo" src="../image/index_02.gif">
      <div class="header">
      <table class="table" border="0" style="width: 80%; height: 47px;">
                                <tr>
                                    <td style="width: 164px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="15pt" ForeColor="Black"
                                                        Width="182px" OnClick="LinkButton2_Click" 
                                            CausesValidation="False">用户信息管理</asp:LinkButton></td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="15pt" ForeColor="Black"
                                                        OnClick="LinkButton3_Click" Width="179px" 
                                            CausesValidation="False">修改当前用户信息</asp:LinkButton></td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        <asp:LinkButton ID="LinkButton5" runat="server" Font-Size="15pt" 
                                            ForeColor="Black" Width="142px" CausesValidation="False" 
                                            OnClick="LinkButton5_Click">用户信息查询 </asp:LinkButton></td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 100px">
                                        <asp:LinkButton ID="LinkButton6" runat="server" Font-Size="15pt" ForeColor="Black"
                                                        Width="80px" OnClick="LinkButton6_Click" 
                                            CausesValidation="False">用户登录</asp:LinkButton></td>
                                    <td style="width: 100px">
                                        &nbsp;</td>
                                    <td style="width: 122px">
                                        <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="15pt" ForeColor="Black"
                                                        OnClick="LinkButton3_Click" Width="80px" CausesValidation="False">返回首页</asp:LinkButton></td>
                                    <td style="width: 1871px">
                                        &nbsp;</td>
                                </tr>
                            </table>
      </div>
     <div class="main">

     <div style="text-align: center">
                <table style="width: 800px">
                        <td style="width: 797px">
                            <asp:DataList ID="dlxx" runat="server" OnItemCommand="DataList1_ItemCommand" 
                                Width="1019px" Height="810px" RepeatColumns="1" 
                                onselectedindexchanged="dlxx_SelectedIndexChanged1">
                                <ItemTemplate>
                                    <table border="1" bordercolor="#99ccff" style="width: 988px; height: 407px;" 
                                        cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td  bgcolor="#3F5D79" style="height: 1px; width: 1356px;" valign="bottom">
                                                <div style="text-align: center">
                                                    <table border="0" style="width: 100%">
                                                        <tr>
                                                            <td style="width: 76px">
                                                                <asp:Label ID="lblname" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="White"
                                                                           Text="发起人名：" Width="104px"></asp:Label></td>
                                                            <td style="width: 100px">
                                                                <asp:Label ID="lblyhm" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="White"
                                                                           Text='<%#                                        DataBinder.Eval(Container.DataItem, "UserName") %>' Width="76px"></asp:Label></td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </td>
                                            <td  bgcolor="#3F5D79" style="height: 1px; margin: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; width: 271px;" valign="bottom">
                                                <div style="text-align: center">
                                                    <table border="0" style="width: 340px" cellpadding="0" cellspacing="0">
                                                        <tr>
                                                            <td style="height: 16px; width: 29px;">
                                                                <asp:Label ID="lbltzbh" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="White"
                                                                           Text="帖子编号：" Width="68px"></asp:Label></td>
                                                            <td style="height: 16px; width: 263px;" align="left">
                                                                <asp:Label ID="lblbh" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="White"
                                                                           Text='<%#                                        DataBinder.Eval(Container.DataItem, "ContId") %>' Width="60px"></asp:Label></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="height: 16px; width: 29px;">
                                                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="White"
                                                                           Text="帖子标题：" Width="65px"></asp:Label></td>
                                                            <td align="left" style="height: 16px; width: 263px;">
                                                                <asp:Label ID="lblzt" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="White"
                                                                           Text='<%#                                        DataBinder.Eval(Container.DataItem, "Subject") %>'></asp:Label></td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </td>
                                            <td  bgcolor="#3F5D79" style="height: 1px; width: 111px;" valign="top">
                                                <table>
                                                    <tr>
                                                        <td style="height: 9px" width="100">
                                                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="hf" Font-Bold="True"
                                                                            Font-Size="11pt" Width="120px" ForeColor="White" CausesValidation="False">我要回复</asp:LinkButton></td>
                                                        <td style="height: 9px; width: 1760px;">
                                                            <asp:LinkButton ID="LinkButton7" runat="server" Font-Bold="True" ForeColor="White" CausesValidation="False" CommandName="sctz" Font-Size="11pt" Width="100px" Visible="False"></asp:LinkButton></td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height: 16px; width: 1356px;">
                                                <asp:Image ID="imgtx" runat="server" Height="82px" ImageUrl='<%#                                        DataBinder.Eval(Container.DataItem, "Logo") %>'
                                                           Width="90px" /><br />
                                                &nbsp;
                                                <asp:Label ID="Label2" runat="server" Font-Size="Small" ForeColor="LightSkyBlue"
                                                           Text="电子邮箱：" Width="104px"></asp:Label>
                                                <asp:Label ID="lbldzyx" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#FFC080"
                                                           Text='<%#                                        DataBinder.Eval(Container.DataItem, "Email") %>'></asp:Label></td>
                                            <td style="height: 16px; width: 271px;">
                                                &nbsp;<div style="text-align: center">
                                                          <table>
                                                              <tr>
                                                                  <td align="left" style="width: 100px">
                                                                      <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="LightSkyBlue"
                                                                                 Text="帖子内容："></asp:Label></td>
                                                              </tr>
                                                              <tr>
                                                                  <td class="style3">
                                                                      <asp:TextBox ID="TextBox1" runat="server" Height="68px" Text='<%#                DataBinder.Eval(Container.DataItem, "Words") %>'
                                                                                   TextMode="MultiLine" Width="341px"></asp:TextBox></td>
                                                              </tr>
                                                          </table>
                                                      </div>
                                            </td>
                                            <td style="height: 16px; width: 111px;">
                                                <div style="text-align: center">
                                                    <table>
                                                        <tr>
                                                            <td class="style4">
                                                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="LightSkyBlue"
                                                                           Text="帖子创建日期及时间：" Width="174px" Height="39px"></asp:Label></td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style4">
                                                                <asp:Label ID="lblcjsj" runat="server" Font-Size="Small" ForeColor="#FFC080" Text='<%#                DataBinder.Eval(Container.DataItem, "CreateTime") %>'></asp:Label></td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style4">
                                                                <table style="width: 98%; height: 57px;">
                                                                    <tr>
                                                                        <td style="width: 100px">
                                                                            <asp:Label ID="Label7" runat="server" Font-Size="9pt" Text="您是此帖的第" Width="88px"></asp:Label></td>
                                                                        <td style="width: 100px">
                                                                            <asp:Label ID="lblrqzs" runat="server" ForeColor="Red" Text='<%#                DataBinder.Eval(Container.DataItem, "HitCount") %>'
                                                                                       Font-Size="9pt"></asp:Label></td>
                                                                        <td style="width: 328px">
                                                                            <asp:Label ID="Label9" runat="server" Font-Size="9pt" Height="14px" Text="位浏览者" Width="78px"></asp:Label></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:DataList ID="DataList2" runat="server" 
                                          BackColor="White" BorderColor="White" BorderStyle="Ridge" 
                                BorderWidth="2px" CellPadding="1"
                                          CellSpacing="1" OnItemCommand="DataList1_ItemCommand" 
                                Width="1033px" Height="908px" 
                                onselectedindexchanged="DataList2_SelectedIndexChanged" DataKeyField="id" 
                                DataSourceID="SqlDataSource1">
                                <ItemTemplate>
                                    id:
                                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                    <br />
                                    <br />
                                </ItemTemplate>
                                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                                <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                                <ItemStyle BackColor="White" ForeColor="Black" />
                                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:WULIUConnectionString %>" 
                                SelectCommand="SELECT [id] FROM [tb_Cargo]"></asp:SqlDataSource>
                        </td>
                    </tr><table border="0" style="width: 100%">
                                    <tr>
                                        <td style="width: 100px">
                                            <asp:Label ID="Label7" runat="server" Text="当前页码为：" Font-Size="9pt" Font-Bold="True"
                                                       ForeColor="SteelBlue" Height="16px" Width="148px"></asp:Label></td>
                                        <td style="width: 100px">
                                            [<asp:Label ID="lblPage" runat="server" Font-Size="Small" Text="1"></asp:Label>]</td>
                                        <td style="width: 100px">
                                            <asp:Label ID="Label6" runat="server" Font-Size="9pt" Text="总页码为：" Font-Bold="True"
                                                       ForeColor="SteelBlue" Width="105px"></asp:Label></td>
                                        <td style="width: 100px">
                                            <asp:Label ID="lblBackPage" runat="server" Font-Size="9pt" Text="Label"></asp:Label></td>
                                        <td style="width: 100px">
                                            <asp:LinkButton ID="lnkbtnOne" runat="server" Font-Size="9pt" ForeColor="Red" OnClick="lnkbtnOne_Click"
                                                            Width="112px" CausesValidation="False" Height="16px">第一页</asp:LinkButton></td>
                                        <td style="width: 100px">
                                            <asp:LinkButton ID="lnkbtnUp" runat="server" Font-Size="9pt" ForeColor="Red" OnClick="lnkbtnUp_Click"
                                                            Width="66px" CausesValidation="False">上一页</asp:LinkButton></td>
                                        <td style="width: 100px">
                                            <asp:LinkButton ID="lnkbtnNext" runat="server" Font-Size="9pt" ForeColor="Red" OnClick="lnkbtnNext_Click"
                                                            Width="66px" CausesValidation="False">下一页</asp:LinkButton></td>
                                        <td style="width: 100px">
                                            <asp:LinkButton ID="lnkbtnLast" runat="server" Font-Size="9pt" ForeColor="Red" OnClick="lnkbtnLast_Click"
                                                            Width="99px" CausesValidation="False">最后一页</asp:LinkButton></td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 797px">
                            <table id="tabht" align="right"  bgcolor="#3F5D79" border="1" style="border-style: solid; border-color: #b2d1fc; background-color:#3F5D79; height: 366px; width: 1020px;"
                                   bordercolordark="#008000" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td align="left" bgcolor="#ffffff" colspan="2" bordercolordark="#ffffff" 
                                        class="style1">
                                        <asp:Image ID="Image1" runat="server" ImageUrl="~/image/jiantou.gif" />
                                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Black"
                                                   Text="欢迎回帖"></asp:Label></td>
                                </tr>
                                <tr style="color: #000000; font-size: 12pt;">
                                    <td align="center" style="height: 21px; width: 62px;">
                                        <asp:Label ID="Label5" runat="server" Font-Size="9pt" Text="回帖编号：" Width="92px" 
                                            ForeColor="White"></asp:Label></td>
                                    <td align="left" style="height: 21px; width: 827px;">
                                        <asp:TextBox ID="txthtbh" runat="server" Width="593px" Enabled="False" 
                                                     ToolTip="不能修改回帖编号" ReadOnly="True"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr style="color: #000000; font-size: 12pt;">
                                    <td align="center" style="height: 21px; width: 62px;">
                                        <asp:Label ID="lblhtname" runat="server" Font-Size="9pt" Text="回帖姓名：" 
                                            Width="90px" ForeColor="White"></asp:Label></td>
                                    <td style="height: 21px; width: 827px;" align="left">
                                        &nbsp;&nbsp;
                                        <asp:Label ID="lblhtyhm" runat="server" Text="Label" ForeColor="Black"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="center" style="height: 42px; width: 62px;">
                                        <asp:Label ID="lblhttitle" runat="server" Font-Size="9pt" Text="回复标题：" Width="95px"></asp:Label></td>
                                    <td style="height: 42px; width: 827px;" align="left">
                                        <asp:TextBox ID="txthtbt" runat="server" Width="586px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txthtbt"
                                                                    Display="Dynamic" ErrorMessage="回复标题不能为空" Font-Size="Small"></asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td align="center" style="height: 76px; width: 62px;">
                                        <asp:Label ID="lblnr" runat="server" Font-Size="9pt" Text="回复内容：" Width="98px"></asp:Label></td>
                                    <td align="left" style="height: 76px; width: 827px;">
                                        <asp:TextBox ID="txthtnr" runat="server" Height="77px" TextMode="MultiLine" Width="594px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txthtnr"
                                                                    Display="Dynamic" ErrorMessage="回复内容不能为空" Font-Size="Small"></asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" class="style2">
                                        <asp:Button ID="btnOk" runat="server" Text="提交" OnClick="btnOk_Click" />
                                        <asp:Button ID="btnCancel" runat="server" Text="全部重写" OnClick="btnCancel_Click" CausesValidation="False" /></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 1px; width: 797px;">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 797px">
                            <uc1:foot ID="Foot1" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 797px">
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