using System;
using System.Data.SqlClient;
using System.Web.UI;

public partial class xiangxixinxi : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["UserName"] == null && Session["UserPwd"] == null)
            {
                Response.Redirect("denglu.aspx");
            }
            else
            {
                string UserId = Request["UserId"];
                SqlConnection con = DB.createDB();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                con.Open();
                cmd.CommandText = "select * from tb_Users where UserId='" + UserId + "'";
                SqlDataReader sdr = cmd.ExecuteReader();
                sdr.Read();

                lblyhname.Text = sdr.GetString(1);

                lblyhpwd.Text = "* * *";

                lblywname.Text = sdr.GetString(3);

                lblyhyx.Text = sdr.GetString(4);
                imgtouxiang.ImageUrl = sdr.GetString(5);
                con.Close();
                //this.touxiangbind();
            }
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/default.aspx");
    }

    protected void lbtnsy_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/dangqianxinxi/dqyhxinxixg.aspx");
    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/yonghuxinxi/yonghuchaxun.aspx");
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/teizixinxi/addteizi.aspx");
    }
}