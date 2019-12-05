using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace shop
{
    public partial class Urunler : System.Web.UI.Page
    {
        #region Değişkenler

        SqlConnection MyConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["Baglan"].ConnectionString);

        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string KategoriId = Request.QueryString["KategoriId"]; //Request QueryString sayfalar arasında veri transfer etmeye yarar.
                AltKategoriListele(KategoriId);
                KategorileriAl(KategoriId);
            }
        }

        private void KategorileriAl(string UstKategoriId)
        {
            if (UstKategoriId != null)
            {

                DataTable dt = new DataTable();
                new SqlDataAdapter("select KategoriID from Kategoriler where UstKategoriId =" + UstKategoriId + "", MyConnection)
                    .Fill(dt);


                string list = null;

                foreach (DataRow row in dt.Rows)
                {
                    list += Convert.ToString(row["KategoriID"]) + ",";
                }
                if (dt.Rows.Count > 0)
                {
                    list = list.Substring(0, list.Length - 1); // length-1 yapamamızın nedeni sondaki virgülü silmek
                    UrunleriListele(list);
                }
                else
                    UrunleriListele(UstKategoriId);
            }
        }

        private void UrunleriListele(string kategoriIdler)
        {
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("sp_UstKategoriIDyeGoreUrunListele", MyConnection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@KategoriIDList", kategoriIdler);
            new SqlDataAdapter(cmd).Fill(dt);
            rpUrunler.DataSource = dt;
            rpUrunler.DataBind();
        }

        private void AltKategoriListele(string Id)
        {
            
                DataTable dt = new DataTable();
                new SqlDataAdapter("select * from Kategoriler where UstKategoriId =  " + Id + "", MyConnection).Fill(dt);
                rpAltKategoriler.DataSource = dt;
                rpAltKategoriler.DataBind();
            
        }

        protected void rpUrunler_ItemCommand(object source, System.Web.UI.WebControls.RepeaterCommandEventArgs e)
        {

        }

        protected void rpUrunler_ItemCommand1(object source, System.Web.UI.WebControls.RepeaterCommandEventArgs e)
        {

        }
    }
}