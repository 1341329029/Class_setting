using System;
using System.Web.UI;

public partial class zhucexinxi : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnty_Click(object sender, EventArgs e)
    {
        Response.Redirect("zhuce.aspx");
    }

    protected void btnbty_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/default.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/yonghuxinxi/yonghu.aspx");
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/denglu/denglu.aspx");
    }

    protected void lbtnsy_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/dangqianxinxi/dqyhxinxixg.aspx");
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/teizixinxi/addteizi.aspx");
    }
}