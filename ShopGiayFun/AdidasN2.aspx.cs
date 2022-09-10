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

public partial class AdidasN2 : System.Web.UI.Page
{
    SqlConnection cn1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        cn1.Open();
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM SANPHAM WHERE THUONGHIEU='Adidas' AND GIOITINH = 'NAM'", cn1);
        DataSet ds = new DataSet();
        da.Fill(ds, "SanPhama");
        DataList1.DataSource = ds.Tables["SanPhama"];
        DataList1.DataBind();
    }
}