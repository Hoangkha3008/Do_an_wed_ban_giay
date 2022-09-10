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

public partial class TrangAdmin : System.Web.UI.Page
{
    SqlConnection cn1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
    SqlDataAdapter da;
    SqlCommand cmd;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn1.Open();
        if(!IsPostBack)
        {
            da = new SqlDataAdapter("Select * From SanPham", cn1);
            ds = new DataSet();
            da.Fill(ds,"Product");
            GridView1.DataSource =ds.Tables["Product"];
            GridView1.DataBind();
        }
    }
    public void InsertProduct(string masp,string tensp,string thuonghieu,string mausac,string chatlieu,bool gioitinh,float dongia,string hinh)
    {
        cn1.Open();
        cmd = new SqlCommand("INSERT INTO SANPHAM VALUES("+masp+","+tensp+","+thuonghieu+","+mausac+","+chatlieu+","+gioitinh+","+dongia+","+hinh+")",cn1);
        cmd.ExecuteNonQuery();
        cn1.Close();
    }
    public void UpdateProduct(string masp,string tensp,string thuonghieu,string mausac,string chatlieu,bool gioitinh,float dongia,string hinh)
    {
        cmd = new SqlCommand("UPDATE SANPHAM SET TENSP=" + tensp + ",THUONGHIEU=" + thuonghieu + ",MAUSAC=" + mausac + ",CHATLIEU=" + chatlieu + ",GIOITINH=" + gioitinh + ",DONGIA=" + dongia + ",Images=" + hinh + "WHERE MASP =" + masp + "", cn1);
        cmd.ExecuteNonQuery();
        cn1.Close();
    }
    public void DeleteProduct(int ma)
    {
        cn1.Open();
        cmd = new SqlCommand("DELETE FROM SANPHAM WHERE MASP=" + ma + "", cn1);
        cmd.ExecuteNonQuery();
        cn1.Close();
    }
    private string getField(string sql)
    {
        string data = "";
        SqlCommand cmd = new SqlCommand(sql, cn1);
        SqlDataReader reader = null;
        reader = cmd.ExecuteReader();
        while (reader.Read())
            data = reader.GetValue(0).ToString();
        reader.Close();
        return data;
    }
    protected void btnthem_Click(object sender, EventArgs e)
    {
            int t = int.Parse(getField("Select count(masp) from sanpham where masp='" + txtmasp.Text.ToString() + "'"));
            if (t == 1)
            {
                Label1.Text = "Mã sản phẩm đã tồn tại";
                Label1.ForeColor = Color.Red;
                txtmasp.ForeColor = Color.Red;
            }
            else
            {
                string strcmp = "INSERT INTO SANPHAM VALUES(@MASP,@TENSP,@THUONGHIEU,@MAUSAC,@CHATLIEU,@GIOITINH,@DONGIA,@Images)";
                cmd = new SqlCommand();
                cmd.Connection = cn1;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = strcmp;

                SqlParameter Par = cmd.CreateParameter();
                Par.ParameterName = "@MASP";
                Par.Value = txtmasp.Text;
                cmd.Parameters.Add(Par);

                SqlParameter Par1 = cmd.CreateParameter();
                Par1.ParameterName = "@TENSP";
                Par1.Value = txttensp.Text;
                cmd.Parameters.Add(Par1);

                SqlParameter Par2 = cmd.CreateParameter();
                Par2.ParameterName = "@THUONGHIEU";
                Par2.Value = txtthuonghieu.Text;
                cmd.Parameters.Add(Par2);

                SqlParameter Par3 = cmd.CreateParameter();
                Par3.ParameterName = "@MAUSAC";
                Par3.Value = txtmausac.Text;
                cmd.Parameters.Add(Par3);

                SqlParameter Par4 = cmd.CreateParameter();
                Par4.ParameterName = "@CHATLIEU";
                Par4.Value = txtchatlieu.Text;
                cmd.Parameters.Add(Par4);

                SqlParameter Par5 = cmd.CreateParameter();
                Par5.ParameterName = "@GIOITINH";
                Par5.Value = rdGioitinh.SelectedValue;
                cmd.Parameters.Add(Par5);

                SqlParameter Par6 = cmd.CreateParameter();
                Par6.ParameterName = "@DONGIA";
                Par6.Value = txtdongia.Text;
                cmd.Parameters.Add(Par6);

                SqlParameter Par7 = cmd.CreateParameter();
                Par7.ParameterName = "@Images";
                if (Page.IsValid && FileUpload1.HasFiles)
                {
                    string hinh = "images/" + FileUpload1.FileName;
                    string filepath = MapPath(hinh);
                    FileUpload1.SaveAs(filepath);
                    Par7.Value = hinh.ToString();
                    cmd.Parameters.Add(Par7);
                }
                int rs = cmd.ExecuteNonQuery();
                if (rs == 1)
                {
                    Response.Write("Đã Thêm Thành công");
                    cn1.Close();
                }
            }   
    }
    protected void btnxoa_Click(object sender, EventArgs e)
    {
        string strcmp = "DELETE FROM SANPHAM WHERE MASP = @MASP";
        cmd = new SqlCommand();
        cmd.Connection = cn1;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = strcmp;

        SqlParameter Par = cmd.CreateParameter();
        Par.ParameterName = "@MASP";
        Par.Value = txtmasp.Text;
        cmd.Parameters.Add(Par);

        int rs = cmd.ExecuteNonQuery();
        if (rs == 1)
        {
            Response.Write("Đã Xóa Thành công");
            cn1.Close();
        }
    }
    protected void btnsua_Click(object sender, EventArgs e)
    {
        string strcmp = "UPDATE SANPHAM SET TENSP=@TENSP,THUONGHIEU=@THUONGHIEU,MAUSAC=@MAUSAC,CHATLIEU=@CHATLIEU,GIOITINH=@GIOITINH,DONGIA=@DONGIA,Images=@Images WHERE MASP=@MASP";
        cmd = new SqlCommand();
        cmd.Connection = cn1;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = strcmp;

        SqlParameter Par = cmd.CreateParameter();
        Par.ParameterName = "@MASP";
        Par.Value = txtmasp.Text;
        cmd.Parameters.Add(Par);

        SqlParameter Par1 = cmd.CreateParameter();
            Par1.ParameterName = "@TENSP";
            Par1.Value = txttensp.Text;
            cmd.Parameters.Add(Par1);

            SqlParameter Par2 = cmd.CreateParameter();
            Par2.ParameterName = "@THUONGHIEU";
            Par2.Value = txtthuonghieu.Text;
            cmd.Parameters.Add(Par2);

            SqlParameter Par3 = cmd.CreateParameter();
            Par3.ParameterName = "@MAUSAC";
            Par3.Value = txtmausac.Text;
            cmd.Parameters.Add(Par3);

            SqlParameter Par4 = cmd.CreateParameter();
            Par4.ParameterName = "@CHATLIEU";
            Par4.Value = txtchatlieu.Text;
            cmd.Parameters.Add(Par4);

            SqlParameter Par5 = cmd.CreateParameter();
            Par5.ParameterName = "@GIOITINH";
            Par5.Value = rdGioitinh.SelectedValue;
            cmd.Parameters.Add(Par5);

            SqlParameter Par6 = cmd.CreateParameter();
            Par6.ParameterName = "@DONGIA";
            Par6.Value = txtdongia.Text;
            cmd.Parameters.Add(Par6);

            SqlParameter Par7 = cmd.CreateParameter();
            Par7.ParameterName = "@Images";
            if (Page.IsValid && FileUpload1.HasFiles)
            {
                string hinh = "images/" + FileUpload1.FileName;
                string filepath = MapPath(hinh);
                FileUpload1.SaveAs(filepath);
                Par7.Value = hinh.ToString();
                cmd.Parameters.Add(Par7);
            }
            int rs = cmd.ExecuteNonQuery();
            if (rs == 1)
            {
                Response.Write("Đã Cập Nhật Thành công");
                cn1.Close();
            }
    }
}