using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shop
{
    public partial class siparis : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSiparisVer_Click(object sender, EventArgs e)
        { 

            Response.Write("<script>alert('Ürün Kaydınız Yapılmıştır.En Kısa Zamanda Teslim Edilecektir')</script>");
            txtAd.Text = "";
            txtSoyad.Text = "";
            txtTel.Text = "";
        }
    }
}