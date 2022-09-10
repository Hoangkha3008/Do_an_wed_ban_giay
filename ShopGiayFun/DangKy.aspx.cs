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

public partial class DangKy : System.Web.UI.Page
{
    SqlConnection cn1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public bool CheckKey(string caulenh)
    {
        SqlDataAdapter adap = new SqlDataAdapter(caulenh, cn1);
        DataTable tab = new DataTable();
        adap.Fill(tab);
        if (tab.Rows.Count > 0)
            return true;
        return false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn1.Open();

        String strcmd = "SET DATEFORMAT DMY INSERT INTO KHACHHANG VALUES (@MAKH,@TENKH,@GIOITINH,@NGAYSINH,@SDT,@DIACHI,@MATKHAU)";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn1;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = strcmd;

        SqlParameter Par = cmd.CreateParameter();
        Par.ParameterName = "@MAKH";
        Par.Value = taikhoan.Text;
        cmd.Parameters.Add(Par);

        SqlParameter Par1 = cmd.CreateParameter();
        Par1.ParameterName = "@MATKHAU";
        Par1.Value = password.Text;
        cmd.Parameters.Add(Par1);

        SqlParameter Par2 = cmd.CreateParameter();
        Par2.ParameterName = "@SDT";
        Par2.Value = sdt.Text;
        cmd.Parameters.Add(Par2);

        SqlParameter Par3 = cmd.CreateParameter();
        Par3.ParameterName = "@DIACHI";
        Par3.Value = diachi.Text;
        cmd.Parameters.Add(Par3);


        SqlParameter Par5 = cmd.CreateParameter();
        Par5.ParameterName = "@TENKH";
        Par5.Value = hoten.Text;
        cmd.Parameters.Add(Par5);

        SqlParameter Par6 = cmd.CreateParameter();
        Par6.ParameterName = "@GIOITINH";
        Par6.Value = gioitinh.Text;
        cmd.Parameters.Add(Par6);


        SqlParameter Par7 = cmd.CreateParameter();
        Par7.ParameterName = "@NGAYSINH";
        Par7.Value = ngaysinh.Text;
        cmd.Parameters.Add(Par7);

        int rs = cmd.ExecuteNonQuery();
        if (rs == 1)
        {
            Response.Write("Đăng Ký Thành Công");
            Response.Redirect("DangNhap.aspx");
            cn1.Close();
        }
    }
}