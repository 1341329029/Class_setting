using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class zhuce : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SqlConnection con = DB.createDB();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
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
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtname.Text != "Tsoft")
        {
            SqlConnection connection = DB.createDB();
            string strSql = "insert into tb_Users(UserName, UserPwd, Ename, Email, Logo) values('" + txtname.Text +
                            "','" + txtpwd.Text + "','" + txtywname.Text + "','" + txtemail.Text + "','" +
                            ddltouxiang.SelectedItem.Text + "')";
            ;
            SqlCommand command = new SqlCommand(strSql, connection);
            connection.Open();
            command.ExecuteNonQuery();
            Response.Redirect("../tisixinxi/chenggong.aspx");
            connection.Close();
        }
        else
        {
            Response.Write("<script>alert('很遗憾，请你输入其它的用户姓名！');location='javascript:history.go(-1)'</script>");
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        imgtouxiang.ImageUrl = ddltouxiang.SelectedValue;
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }


    protected void lyhgl_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/yonghuxinxi/yonghu.aspx");
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
        Response.Redirect("~/denglu/denglu.aspx");
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/teizixinxi/addteizi.aspx");
    }

    protected void lbtnsy_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
}