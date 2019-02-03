using System;
using System.Web.UI;

public partial class shibai : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
}