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
    public partial class Sepet : System.Web.UI.Page
    {
        #region Değişkenler


        SqlConnection MyConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["Baglan"].ConnectionString);

        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Listele();
            }

        }

        private void Listele()
        {
            try { string SepetNo = Session["SepetNo"].ToString();
            DataTable dt2 = new DataTable();
            SqlDataAdapter adapter2 =
                new SqlDataAdapter("SELECT a.*, b.*, c.MarkaAdi, a.Adet*a.UrunFiyat as ToplamFiyat FROM SepetTemp a LEFT JOIN Urunler b on a.UrunId=b.UrunID LEFT JOIN Markalar c on b.MarkaID=c.MarkaID where a.SepetNo= '" + SepetNo + "'", MyConnection);
            adapter2.Fill(dt2);
            rpSepet.DataSource = dt2;
            rpSepet.DataBind();}
            catch
            {

            }
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            foreach (RepeaterItem item in rpSepet.Items)
            {
                if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                {
                    Label SepetId = (Label)item.FindControl("lblSepetId");
                    TextBox UrunAdet = (TextBox)item.FindControl("txtAdet");

                    string kayit = "UPDATE SepetTemp SET Adet=@Adet WHERE Id=@Id";
                    MyConnection.Open();
                    SqlCommand komut = new SqlCommand(kayit, MyConnection);
                    komut.Parameters.AddWithValue("@Adet", UrunAdet.Text.Trim());
                    komut.Parameters.AddWithValue("@Id", SepetId.Text);
                    komut.ExecuteNonQuery();
                    MyConnection.Close();
                   
                }

            }

            Listele();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton lnk = (ImageButton)sender;
            string Id = lnk.CommandArgument.ToString();
            SqlCommand cmd = new SqlCommand("DELETE FROM SepetTemp where Id=@Id and SepetNo=@SepetNo", MyConnection);
            cmd.Parameters.AddWithValue("@Id", Id);
            cmd.Parameters.AddWithValue("@SepetNo", Session["SepetNo"]);
            MyConnection.Open();
            cmd.ExecuteNonQuery();
            Listele();
        }
    }
}