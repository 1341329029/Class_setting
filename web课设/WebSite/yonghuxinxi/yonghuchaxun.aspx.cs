using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yonghuchaxun : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null && Session["UserPwd"] == null)
        {
            Response.Redirect("~/denglu/denglu.aspx");
        }
        aa();
    }

    public void aa()
    {
        SqlConnection con = DB.createDB();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select * from tb_users where username <> 'tsoft'", con);
        DataSet ds = new DataSet();
        sda.Fill(ds, "tb_Users");
        GridView1.DataSource = ds.Tables[0].DefaultView;
        GridView1.DataKeyNames = new[] {"UserId"};
        GridView1.DataBind();
        con.Close();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        aa();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        if (Session["UserName"] == null && Session["UserPwd"] == null)
        {
            Response.Redirect("~/denglu/denglu.aspx");
        }
        else
        {
            if (Session["UserName"].ToString() == "Tsoft" && Session["UserPwd"].ToString() == "111")
            {
                string UserId = GridView1.DataKeys[e.RowIndex].Value.ToString();
                SqlConnection con = DB.createDB();
                con.Open();

                SqlCommand cmd =
                    new SqlCommand(
                        "delete from tb_Users where (UserName NOT IN ('Tsoft')) AND UserId='" + UserId + "' ", con);
                cmd.ExecuteNonQuery();

                aa();
                GridView1.EditIndex = -1;
            }
            else
            {
                Response.Write("<script>alert('你没有权限删除，必须是管理员才能进行删除操作！');location='javascript:history.go(-1)'</script>");
            }
        }
    }

    protected void btnselect_Click(object sender, EventArgs e)
    {
        SqlConnection con = DB.createDB();
        con.Open();
        if (RadioButton1.Checked)
        {
            if (TextBox1.Text != "")
            {
                TextBox2.Text = "";
                SqlCommand cmd = new SqlCommand();
                DataSet ds = new DataSet();
                SqlDataAdapter sda = new SqlDataAdapter("select * from tb_Users where UserId=" + TextBox1.Text + "", con);
                sda.Fill(ds, "tb_Users");
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            if (TextBox1.Text == "")
            {
                Response.Write("<script>alert('用户编号不能为空！');location='javascript:history.go(-1)'</script>");
            }
        }
        if (RadioButton2.Checked)
        {
            if (TextBox2.Text != "")
            {
                TextBox1.Text = "";
                TextBox2.Focus();
                SqlCommand cmd = new SqlCommand();
                DataSet ds = new DataSet();
                SqlDataAdapter sda = new SqlDataAdapter(
                    "select * from tb_Users where UserName='" + TextBox2.Text + "'", con);
                sda.Fill(ds, "tb_Users");
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            if (TextBox2.Text == "")
            {
                Response.Write("<script>alert('用户姓名不能为空！');location='javascript:history.go(-1)'</script>");
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        aa();
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

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onMouseOver",
                                 "Color=this.style.backgroundColor;this.style.backgroundColor='lightBlue'");
            e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor=Color;");
            ((LinkButton) (e.Row.Cells[5].Controls[0])).Attributes.Add("onclick", "return confirm('确定删除吗？')");
        }
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