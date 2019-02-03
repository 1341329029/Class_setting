<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chenggong.aspx.cs" Inherits="chenggong" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
         <title>贼厉害网上论坛</title>
         <style type="text/css">
             .gyy
             {
                 width:400px;
                 height:230px;
                 margin: auto;
             }
         </style>
    </head>
    <body style="height: 503px">
        <form id="form1" runat="server">

            <div>
                <div style="text-align: center; height: 518px;">
                    <br />
                    <div  class="gyy"style="text-align: center">
                        <table border="0" style="text-align:center;background-image: url('../image/success.jpg'); height: 178px; width: 328px;">
                            <tr>
                                <td style="width: 73px">
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 137px; width: 73px;" valign="bottom">
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="20px" ForeColor="Maroon"
                                               Text="恭喜您！成功完成操作！" Width="355px" Height="18px"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="height: 24px; width: 73px;">
                                    <div style="text-align: center">
                                        <table border="0" style="width: 413%">
                                            <tr>
                                                <td style="width: 158px">
                                                </td>
                                                <td style="width: 266px">
                                                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Small" OnClick="LinkButton1_Click">返回首页</asp:LinkButton></td>
                                                <td>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
    
            </div>
        </form>
    </body>
</html>