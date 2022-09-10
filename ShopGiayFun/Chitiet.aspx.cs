using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Configuration;
using App_Code;

public partial class Chitiet : System.Web.UI.Page
{
    SqlConnection cn1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        cn1.Open();
        string id = Request.QueryString["ID"].ToString();
        String strcmd = "SELECT MASP,Images, TENSP,DONGIA, THUONGHIEU ,MAUSAC,CHATLIEU,GIOITINH FROM SANPHAM where MASP= '" + id.ToString()+"'" ;
        SqlDataAdapter da = new SqlDataAdapter(strcmd, cn1);
        DataSet ds = new DataSet();
        da.Fill(ds, "SanPhamss");
        DataList1.DataSource = ds.Tables["SanPhamss"];
        DataList1.DataBind();

       
    }
}