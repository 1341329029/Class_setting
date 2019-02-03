using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class xiangxixinxi : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null && Session["UserPwd"] == null)
        {
            Response.Redirect("~/denglu/denglu.aspx");
        }
        else
        {
            string UserName = Session["UserName"].ToString();
            string UserPwd = Session["UserPwd"].ToString();
            SqlConnection con = DB.createDB();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "select * from tb_Users where UserName='" + UserName + "'and UserPwd='" + UserPwd + "'";
            SqlDataReader sdr = cmd.ExecuteReader();
            sdr.Read();

            txtname.Text = sdr["UserName"].ToString();
            if (txtname.Text == "Tsoft")
            {
                txtname.Enabled = false;
                txtpwd.Enabled = false;
            }
            if (txtname.Text != "Tsoft")
            {
                txtname.Enabled = true;
                txtpwd.Enabled = true;
            }
            txtpwd.Text = sdr.GetString(2);
            txtywname.Text = sdr.GetString(3);
            txtemail.Text = sdr.GetString(4);
            imgtouxiang.ImageUrl = sdr.GetString(5);
            con.Close();
            touxiangbind();
            if (!Page.IsPostBack)
            {
            }
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

        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string UserName = Session["UserName"].ToString();
        SqlConnection con = DB.createDB();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "update tb_Users set UserName='" + txtname.Text + "',UserPwd='" + txtpwd.Text + "',Ename='" +
                          txtywname.Text + "',Email='" + txtemail.Text + "',Logo='" + ddltouxiang.SelectedItem.Text +
                          "' where UserName='" + UserName + "'";
        cmd.ExecuteNonQuery();
        Response.Redirect("~/tisixinxi/chenggong.aspx");
        con.Close();
    }

    protected void ddltouxiang_SelectedIndexChanged(object sender, EventArgs e)
    {
        imgtouxiang.ImageUrl = ddltouxiang.SelectedValue;
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/denglu/denglu.aspx");
    }

    protected void lbtnsy_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
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

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/teizixinxi/addteizi.aspx");
    }
}