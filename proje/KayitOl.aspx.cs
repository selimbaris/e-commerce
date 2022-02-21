using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proje
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKayit_Click(object sender, EventArgs e)
        {
            if (txtAd.Text != "" && txtSoyad.Text != "" && txtSifre.Text != "" && txtKullanici.Text != "" && txtTc.Text != "" && txtTel.Text != "" && txtPosta.Text != "" )
            {
                // Bağlantı adresini tanımlama (Köprü kuruluyor)
                String BaglantiYolu = ("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:/Users/msi-nb/source/repos/proje/proje/UyeKayit.mdb;Persist Security Info=False;");
                OleDbConnection Baglan = new OleDbConnection(BaglantiYolu);
                Baglan.Open();

                string ad = txtAd.Text;
                string soyad = txtSoyad.Text;
                string sifre = txtSifre.Text;
                string kullaniciadi = txtKullanici.Text;
                string tckimlik = txtTc.Text;
                string telefon = txtTel.Text;
                string posta = txtPosta.Text;


                string Sorgu = "INSERT INTO UyeKayit ( Ad, Soyad, Sifre, KullaniciAdi, TcKimlik, TelefonNo, E-Posta)" + "VALUES (@Ad2 , @Soyad2 , @Sifre2, @KullaniciAdi2, @TcKimlik2, @TelefonNo2 @E-Posta2)";

                OleDbCommand Komut = new OleDbCommand(Sorgu, Baglan);

                Komut.Parameters.AddWithValue("@Ad2", ad);
                Komut.Parameters.AddWithValue("@Soyad2", soyad);
                Komut.Parameters.AddWithValue("@Sifre2", sifre);
                Komut.Parameters.AddWithValue("@KullaniciAdi2", kullaniciadi);
                Komut.Parameters.AddWithValue("@TcKimlik2", tckimlik);
                Komut.Parameters.AddWithValue("@TelefonNo2", telefon);
                Komut.Parameters.AddWithValue("@E-Posta2", posta);


                Komut.ExecuteNonQuery();

                Baglan.Close();
                Komut.Dispose();

                lblKayit.Text = "Bilgiler başarı ile kaydedildi";
                txtAd.Text = "";
                txtSoyad.Text = "";
                txtSifre.Text = "";
                txtKullanici.Text = "";
                txtTc.Text = "";
                txtTel.Text = "";
                txtPosta.Text = "";
            }
            else
            {
                lblKayit.Text = "Bilgileri Eksiksiz Girmelisin...";
            }
        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {

        }
    }
}