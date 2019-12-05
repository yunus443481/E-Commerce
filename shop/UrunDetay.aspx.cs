using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shop
{
    public partial class UrunDetay : System.Web.UI.Page
    {
        #region Değişkenler

        SqlConnection MyConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["Baglan"].ConnectionString);

        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string UrunID = Request.QueryString["UrunID"];
                DataTable tbl = new DataTable();
                SqlCommand cmd = new SqlCommand("SELECT *  FROM Markalar M INNER JOIN Urunler U ON M.MarkaID = U.MarkaID where UrunID = " + UrunID + "", MyConnection);
                new SqlDataAdapter(cmd).Fill(tbl);
                rpUrunDetay.DataSource = tbl;
                rpUrunDetay.DataBind();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string UrunID = Request.QueryString["UrunId"];
            string Adet = UrunAdet.Text;
            Response.Redirect("SepeteEkle.aspx?UrunID=" + UrunID + "&Adet=" + Adet);
        }

        //private void MarkalariListele(string urunID)
        //{
        //    DataTable dt = new DataTable();
        //    SqlCommand cmd2 = new SqlCommand("sp_MarkaGetir", MyConnection);
        //    cmd2.CommandType = CommandType.StoredProcedure;
        //    cmd2.Parameters.AddWithValue("@UrunIDleri", urunID);
        //    new SqlDataAdapter(cmd2).Fill(dt);
        //    rpUrunDetay.DataSource = dt;
        //    rpUrunDetay.DataBind();
        //}

    }
}