using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Xaydung
/// </summary>
namespace App_Code
{ 
    public class Xaydung
    {
		    public DataTable giohang= new DataTable();
            public void CreateItem()
            {
                giohang.Columns.Add("MASP");
                giohang.Columns.Add("TENSP");
                giohang.Columns.Add("Images");
                giohang.Columns.Add("MAUSAC");
                giohang.Columns.Add("GIOITINH");
                giohang.Columns.Add("DONGIA");
                giohang.Columns.Add("Number");
            }
            public Boolean InsertProduct(string MASP,string tensp,string hinh,string mausac,string gioitinh,float gia,int number)
            {
                Boolean flag = false;
                foreach(DataRow d in giohang.Rows)
                {
                   if(d[0].ToString()==MASP)
                   {
                       d[6] = int.Parse(d[6].ToString()) + number;
                       flag = true;
                   }
                }
                if(flag==false)
                {
                    DataRow dong = giohang.NewRow();
                    dong[0] = MASP;
                    dong[1] = tensp;
                    dong[2] = hinh;
                    dong[3] = mausac;
                    dong[4] = gioitinh;
                    dong[5] = gia;
                    dong[6] = number;
                    giohang.Rows.Add(dong);
                    return true;
                }
                return false;
            }
            public int Tongthanhtien()
            {
                int a = 0;
                foreach(DataRow d in giohang.Rows)
                {
                    a = a + int.Parse(d[5].ToString()) * int.Parse(d[6].ToString());
                }
                return a;
            }
    }
}