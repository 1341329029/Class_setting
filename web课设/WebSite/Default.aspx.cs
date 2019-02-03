using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // 将系统时间与13进行比较，来获取问候语
            int Time = DateTime.Now.Hour.CompareTo(13);
            string str;
            if (Time > 0)
            {
                str = "下午好！";
            }
            else if (Time < 0)
            {
                str = "上午好！";
            }
            else
            {
                str = "中午好！";
            }
            if (Session["UserName"] == null && Session["UserPwd"] == null)
            {
            }
            else
            {
                //this.Label6.Visible = true;
            }
            aa();
            Label6.Text = str;
        }
    }

    public void aa()
    {
        SqlConnection con = DB.createDB();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select * from tb_Content", con);
        DataSet ds = new DataSet();
        sda.Fill(ds, "tb_Content");
        gvlt.DataSource = ds;
        gvlt.DataKeyNames = new[] {"ContId"};
        gvlt.DataBind();
        con.Close();
    }

    protected void gvlt_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvlt.PageIndex = e.NewPageIndex;
        aa();
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/teizixinxi/addteizi.aspx");
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/denglu/denglu.aspx");
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/dangqianxinxi/dqyhxinxixg.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/yonghuxinxi/yonghu.aspx");
    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/yonghuxinxi/yonghuchaxun.aspx");
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/teizixinxi/addteizi.aspx");
    }

    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        SqlConnection con = DB.createDB();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "select count(*) from tb_Users where UserName='" + txtname.Text + "'and UserPwd='" +
                          txtpwd.Text + "' ";
        int a = Convert.ToInt32(cmd.ExecuteScalar());
        if (a > 0)
        {
            Response.Write("<script>alert('恭喜您登录成功！');location='javascript:history.go(-1)'</script>");
            Session["UserName"] = txtname.Text;
            Session["UserPwd"] = txtpwd.Text;
            Literal1.Text = Session["UserName"] + " " + "登录成功";
            txtname.Text = "";
            txtpwd.Text = "";
        }
        else
        {
            Response.Write("<script>alert('很遗憾，登录失败！');location='javascript:history.go(-1)'</script>");
        }
        con.Close();
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/zhucexinix/zhucexinxi.aspx");
    }

    protected void gvlt_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        if (Session["UserName"] == null && Session["UserPwd"] == null)
        {
            Response.Redirect("~/denglu/denglu.aspx");
        }
        else
        {
            if (Session["UserName"].ToString() == "Tsoft" && Session["UserPwd"].ToString() == "111")
            {
                string ContId = gvlt.DataKeys[e.RowIndex].Value.ToString();
                SqlConnection con = DB.createDB();
                con.Open();
                SqlCommand cmd = new SqlCommand("delete from tb_Content where ContId='" + ContId + "'", con);
                cmd.ExecuteNonQuery();


                aa();

                Response.Redirect("~/tisixinxi/chenggong.aspx");
                gvlt.EditIndex = -1;
            }
            else
            {
                Response.Write("<script>alert('你没有权限删除此帖，必须是管理员才能进行删除！');location='javascript:history.go(-1)'</script>");
            }
        }
    }
}