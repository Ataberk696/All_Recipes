using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitem
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Tarifid"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * From Tbl_Tarifler where Tarifid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtTarifAd.Text = dr[1].ToString();
                    TxtTarifMalzemeler.Text = dr[2].ToString();
                    TxtYapilis.Text = dr[3].ToString();
                    TxtTarifÖneren.Text = dr[5].ToString();
                    TxtTarifÖnerenMail.Text = dr[6].ToString();
                }
                bgl.baglanti().Close();

                SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategoriler",bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();

            }
        }

        protected void BtnYorumYap0_Click(object sender, EventArgs e)
        {
            //Güncelleme

            SqlCommand komut = new SqlCommand("Update Tbl_Tarifler set TarifDurum=1 where Tarifid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Yemeği Ana sayfa ekleme

            SqlCommand komut2 = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", TxtTarifAd.Text);
            komut2.Parameters.AddWithValue("@p2", TxtTarifMalzemeler.Text);
            komut2.Parameters.AddWithValue("@p3", TxtYapilis.Text);
            komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();

            SqlCommand komut3 = new SqlCommand("Update Tbl_Kategoriler set KategoriAdet = KategoriAdet+1 where Kategoriid=@Kategoriid",bgl.baglanti());
            komut3.Parameters.AddWithValue("@Kategoriid", DropDownList1.SelectedValue);
            komut3.ExecuteNonQuery();   
            bgl.baglanti().Close();
        }
    }
}