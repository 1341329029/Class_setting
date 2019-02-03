using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yonghu : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null && Session["UserPwd"] == null)
        {
            Response.Redirect("~/denglu/denglu.aspx");
        }
        if (Session["UserName"].ToString() != "Tsoft" && Session["UserPwd"].ToString() != "111")
        {
            Response.Write("<script>alert('很抱歉你的权限不够！');location='javascript:history.go(-1)'</script>");
        }
        aa();
    }

    public void aa()
    {
        SqlConnection con = DB.createDB();
        SqlDataAdapter sda = new SqlDataAdapter("select * from tb_users where username <> 'tsoft'", con);
        DataSet ds = new DataSet();
        sda.Fill(ds, "tb_Users");
        GridView1.DataSource = ds.Tables[0].DefaultView;
        GridView1.DataKeyNames = new[] {"UserId"};
        GridView1.DataBind();
        con.Close();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
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

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/yonghuxinxi/yonghuadd.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/yonghuxinxi/yonghuchaxun.aspx");
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/dangqianxinxi/dqyhxinxixg.aspx");
    }

    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/denglu/denglu.aspx");
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onMouseOver",
                                 "Color=this.style.backgroundColor;this.style.backgroundColor='lightBlue'");
            e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor=Color;");
        }
    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/yonghuxinxi/yonghuchaxun.aspx");
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/teizixinxi/addteizi.aspx");
    }
}