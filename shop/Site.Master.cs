using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace shop
{
    public partial class Site : System.Web.UI.MasterPage
    {
        #region Değişkenler

        SqlConnection MyConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["Baglan"].ConnectionString);

        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                if (Session["Permission"]=="OK")
                {
                    UyeGirmis.Visible = true;
                }
                else
                {
                    UyeGirmemis.Visible = true;
                }
                
                //string kID = Convert.ToString(Request.QueryString["ID"]);
                //KulaniciGetir(kID);
                KategorileriListele();
            }

        }


        private void KulaniciGetir(string kID)
        {
            if (kID != null)
            {
                SqlConnection Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Baglan"].ConnectionString);
                DataTable dt = new DataTable();
                SqlDataAdapter dap = new SqlDataAdapter("Select * From Kullanicilar Where KullaniciID = " + kID + "", Connection);
                dap.Fill(dt);
                rpUser.DataSource = dt;
                rpUser.DataBind();
            }
        }

        private void KategorileriListele()
        {
            #region 1. Yol
            //SqlConnection baglanti2 = new SqlConnection(ConfigurationManager.ConnectionStrings["Baglan"].ConnectionString);
            //SqlCommand komut2 = new SqlCommand("select * from Kategoriler where UstKategoriId is null", baglanti2);
            //try
            //{
            //    baglanti2.Open();
            //    SqlDataReader reader2 = komut2.ExecuteReader();
            //    rpKategoriler.DataSource = reader2;
            //    rpKategoriler.DataBind();
            //    reader2.Close();
            //}
            //finally
            //{
            //    baglanti2.Close();
            //    baglanti2.Dispose();
            //} 
            #endregion

            //2. Yol
            DataTable dt = new DataTable();
            SqlDataAdapter dap = new SqlDataAdapter("select * from Kategoriler where UstKategoriId is null", MyConnection);
            dap.Fill(dt);
            rpKategoriler.DataSource = dt;
            rpKategoriler.DataBind();
        }

        protected void rpKategoriler_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.DataItem != null)
            {
                //ItemDataBound olayı, veritabanından istediğimiz verileri repeater kontrolüne bağlama işlemi yapar.
                Literal KategoriId = (Literal)e.Item.FindControl("KategoriId");
                Repeater rpAltKategoriler = (Repeater)e.Item.FindControl("rpAltKategoriler");

                #region 1. Yol
                //SqlConnection baglanti2 = new SqlConnection(ConfigurationManager.ConnectionStrings["Baglan"].ConnectionString);
                //SqlCommand komut2 = new SqlCommand("select * from Kategoriler where UstKategoriId =" + KategoriId.Text + "", baglanti2);
                //try
                //{
                //    baglanti2.Open();
                //    SqlDataReader reader2 = komut2.ExecuteReader();
                //    rpAltKategoriler.DataSource = reader2;
                //    rpAltKategoriler.DataBind();
                //    reader2.Close();
                //}
                //finally
                //{
                //    baglanti2.Close();
                //    baglanti2.Dispose();
                //} 
                #endregion

                //2.Yol
                //SqlDataAdapterın ikinci kullanımı
                DataTable dt = new DataTable();
                new SqlDataAdapter("select * from Kategoriler where UstKategoriId =" + KategoriId.Text + "", MyConnection).Fill(dt);
                rpAltKategoriler.DataSource = dt;
                rpAltKategoriler.DataBind();
            }
        }


        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string[] theCookies = System.IO.Directory.GetFiles(Environment.GetFolderPath(Environment.SpecialFolder.Cookies));
            foreach (string currentFile in theCookies)
            {
                try
                {
                    System.IO.File.Delete(currentFile);
                }
                catch
                {
                }
            }
            Session["Permission"] = "NOT";
            Response.Redirect("Default.aspx");
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {


            Response.Redirect("Sepet.aspx");

        }
    }
}