using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.Drawing;

public partial class Admin : System.Web.UI.Page
{
    SqlConnection cn1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn1.Open();
        String strcmd = "SELECT Count(TAIKHOAN) from ACCOUNT WHERE TAIKHOAN=@TAIKHOAN AND MATKHAU=@MATKHAU";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn1;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = strcmd;

        SqlParameter Par = cmd.CreateParameter();
        Par.ParameterName = "@TAIKHOAN";
        Par.Value = taikhoan.Text;
        cmd.Parameters.Add(Par);

        SqlParameter Par1 = cmd.CreateParameter();
        Par1.ParameterName = "@MATKHAU";
        Par1.Value = password.Text;
        cmd.Parameters.Add(Par1);

        int t = (int)(cmd.ExecuteScalar());
        if(t>0)
        {
            string admin = taikhoan.Text.ToString();
            Response.Redirect("TrangAdmin.aspx?&admin" + admin.ToString());
        }
        else
        {
            lbThongBao.Text = "Tên tài khoản hoặc Mật khẩu bị sai!! Xin mời nhập lại.";
            lbThongBao.ForeColor = Color.Red;
            password.Text = "";
            taikhoan.ForeColor = Color.Red;
        }
    }
}