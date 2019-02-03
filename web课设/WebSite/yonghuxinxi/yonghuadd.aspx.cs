using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class yonghuxinxi_yonghuadd : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            touxiangbind();
        }
    }

    public void touxiangbind()
    {
        SqlConnection con = DB.createDB();
        con.Open();
        string sqlstr = "select * from tb_touxiang";
        SqlDataAdapter myda = new SqlDataAdapter(sqlstr, con);
        DataSet myds = new DataSet();
        myda.Fill(myds, "tb_touxiang");
        ddltouxiang.DataSource = myds.Tables["tb_touxiang"];
        ddltouxiang.DataTextField = "Image";
        ddltouxiang.DataBind();
        imgtouxiang.ImageUrl = ddltouxiang.SelectedValue;
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = DB.createDB();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "insert into tb_Users(UserName, UserPwd, Ename, Email, Logo) values('" + txtname.Text + "','" +
                          txtpwd.Text + "','" + txtywname.Text + "','" + txtemail.Text + "','" +
                          ddltouxiang.SelectedItem.Text + "')";
        cmd.ExecuteNonQuery();
        Response.Redirect("~/tisixinxi/chenggong.aspx");
        con.Close();
    }

    protected void ddltouxiang_SelectedIndexChanged(object sender, EventArgs e)
    {
        imgtouxiang.ImageUrl = ddltouxiang.SelectedValue;
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/dangqianxinxi/dqyhxinxixg.aspx");
    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/yonghuxinxi/yonghuchaxun.aspx");
    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/denglu/denglu.aspx");
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
}