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
    public partial class SepeteEkle : System.Web.UI.Page
    {
        #region Değişkenler

        SqlConnection MyConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["Baglan"].ConnectionString);

        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            string UrunID = Request.QueryString["UrunID"];
            string UrunAdi = "";
            decimal UrunFiyati = 0;
            int Adet = 1;

            if (Session["SepetNo"] == "" || Session["SepetNo"] == null)
            {
                Session["SepetNo"] =  Guid.NewGuid();
            }


            if (Request.QueryString["Adet"]=="" || Request.QueryString["Adet"] ==null)
            {
                Adet = 1;
            }
            else
            {
                Adet = Convert.ToInt32(Request.QueryString["Adet"]);
            }
            DataTable dt = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM Urunler WHERE UrunID=" + UrunID + "", MyConnection);
            adapter.Fill(dt);

            foreach (DataRow row in dt.Rows)
            {
                UrunAdi = Convert.ToString(row["UrunAdi"]);
                UrunFiyati = Convert.ToDecimal(row["BirimFiyati"]);


                string kayit = 
                "insert into SepetTemp(SepetNo, UrunID,UrunAdi,UrunFiyat,Adet,Tarih,Saat) values (@SepetNo,@UrunID,@UrunAdi,@UrunFiyat,@Adet,@Tarih,@Saat)";
                MyConnection.Open();
                SqlCommand komut = new SqlCommand(kayit, MyConnection);
                komut.Parameters.AddWithValue("@SepetNo", Session["SepetNo"]);
                komut.Parameters.AddWithValue("@UrunID", UrunID);
                komut.Parameters.AddWithValue("@UrunAdi", UrunAdi);
                komut.Parameters.AddWithValue("@UrunFiyat", UrunFiyati);
                komut.Parameters.AddWithValue("@Adet", Adet);
                komut.Parameters.AddWithValue("@Tarih", DateTime.Now);
                komut.Parameters.AddWithValue("@Saat", DateTime.Now.ToShortTimeString());
                komut.ExecuteNonQuery();
                MyConnection.Close();


            }

            Response.Redirect("Sepet.aspx");

        }
    }
}