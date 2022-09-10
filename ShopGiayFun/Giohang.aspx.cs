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

public partial class Giohang : System.Web.UI.Page
{
    SqlConnection cn1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            cn1.Open();
            String id = Request.QueryString["ID"].ToString();
            string strcmd ="select MASP,TENSP,Images,MAUSAC,GIOITINH,DONGIA from SANPHAM WHERE MASP = '" + id.ToString() +"'";
            SqlDataAdapter dal = new SqlDataAdapter(strcmd,cn1);
            DataSet d = new DataSet();
            dal.Fill(d,"Sanphams");
            if(d.Tables[0].Rows.Count>0)
            {
                string name = d.Tables[0].Rows[0][1].ToString();
                string hinh = d.Tables[0].Rows[0][2].ToString();
                string mau = d.Tables[0].Rows[0][3].ToString();
                string gioitinh = d.Tables[0].Rows[0][4].ToString();
                float dongia = float.Parse(d.Tables[0].Rows[0][5].ToString());
                int sl = 1;
                Xaydung cart = new Xaydung();
                cart = (Xaydung)Session["Cart"];
                cart.InsertProduct(id, name, hinh, mau, gioitinh, dongia, sl);
                Session["Cart"] = cart;
            }
        }
        Xaydung cart1 = (Xaydung)Session["Cart"];
        DataTable t = cart1.giohang;
        GridView1.DataSource = t;
        GridView1.DataBind();
        Label1.Text = cart1.Tongthanhtien().ToString();
    }
}