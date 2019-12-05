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
    public partial class giris : System.Web.UI.Page
    {
        #region Değişkenler

        SqlConnection MyConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["Baglan"].ConnectionString);

        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter dap = new SqlDataAdapter("Select * From Kullanicilar", MyConnection);
            dap.Fill(dt);
            string kullaniciAdi = txtEmail.Text.Trim();
            string sifre = txtSifre.Text.Trim();
            string ID = null;

            bool sayac = false;
            foreach (DataRow row in dt.Rows)
            {
                if (kullaniciAdi == Convert.ToString(row["KullaniciIsmi"]) && sifre == Convert.ToString(row["KullaniciSifre"]))
                {
                    ID = Convert.ToString(row["KullaniciID"]);

                    sayac = true;
                }
                else
                {
                    Label1.Text = "Kullanıcı Adı ve Şifre Yanlış.Tekrar Deneyiniz!";
                    txtEmail.Text = "";
                    txtSifre.Text = "";
                    
                }
            }
            if (sayac.Equals(true))
            {
                Session["Permission"] = "OK";
                Response.Redirect("Default.aspx?ID=" + ID + "");
            }

          /* else
            {
                Response.Redirect("Default.aspx");
            }
            */
        }

        protected void btnKayıtOl_Click(object sender, EventArgs e)
        {
            SqlConnection MyConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Baglan"].ConnectionString);
            
            if (txtSifre2.Text == txtSifre2Tekrar.Text)
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Kullanicilar(KullaniciIsmi,KullaniciSifre,YetkiDurumu) VALUES (@ad,@sifre,0)", MyConn);
                cmd.Parameters.AddWithValue("@ad", txtEmail2.Text);
                cmd.Parameters.AddWithValue("@sifre", txtSifre2.Text);
                int eff = 0;
                if (MyConn.State == ConnectionState.Closed)
                    MyConn.Open();
                eff = cmd.ExecuteNonQuery();
                MyConn.Close();

                if (eff > 0)
                {
                    txtEmail2.Text = "";
                    txtSifre2.Text = "";
                    txtSifre2Tekrar.Text = "";
                    lblHata.Text = "Kayıt Başarıyla Gerçekleştirildi";
                }
                else
                    lblHata.Text = "Kayıt başarısız!";
            }

            else
            {
                lblHata.Text = "Lütfen Şifreyi Doğru Girdiğinizden Emin Olunuz!!!";
            }
        }

    }
}