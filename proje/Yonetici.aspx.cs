using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proje
{
    public partial class Yonetici : System.Web.UI.Page
    {
        public void sayfayukleme()
        {
            String BaglantiYolu = ("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:/Users/msi-nb/source/repos/proje/proje/UrunListesi.mdb;Persist Security Info=False;");
            OleDbConnection Baglan = new OleDbConnection(BaglantiYolu);
            Baglan.Open();

            string Sorgu = "SELECT * FROM AnaKategori";

            OleDbCommand Komut = new OleDbCommand(Sorgu, Baglan);

            OleDbDataReader Okuyucu = Komut.ExecuteReader();

            drpana.Items.Clear();
            drpana1.Items.Clear();


            ListItem elmn = new ListItem();
            elmn.Text = "Ana Kategori seç";
            elmn.Value = "0";
            drpana.Items.Add(elmn);
            drpana1.Items.Add(elmn);

            while (Okuyucu.Read() == true)
            {
                elmn = new ListItem();
                elmn.Text = Okuyucu["AnaKategoriAdi"].ToString();
                elmn.Value = Okuyucu["AnaKategoriID"].ToString();
                drpana.Items.Add(elmn);
                drpana1.Items.Add(elmn);
            }

            Baglan.Close();
            Baglan.Dispose();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                sayfayukleme();
            }
            
        }

        //ANA KATEGORİ KAYIT
        protected void btnana_Click(object sender, EventArgs e)
        {
            String BaglantiYolu = ("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:/Users/msi-nb/source/repos/proje/proje/UrunListesi.mdb;Persist Security Info=False;");
            OleDbConnection Baglan = new OleDbConnection(BaglantiYolu);
            Baglan.Open();

            string AnaKategoriAdi = txtana.Text;

            string Sorgu = "INSERT INTO AnaKategori (AnaKategoriAdi)" + "VALUES (@AnaKategoriAdi)";

            OleDbCommand Komut = new OleDbCommand(Sorgu, Baglan);

            Komut.Parameters.AddWithValue("@AnaKategoriAdi", AnaKategoriAdi);

            Komut.ExecuteNonQuery();

            Baglan.Close();
            Komut.Dispose();
            sayfayukleme();
            Response.Write("<div> Ana Kategori Kaydedilmiştir. </div>");
        }

        //ALT KATEGORİ KAYIT
        protected void btnalt_Click(object sender, EventArgs e)
        {
            String BaglantiYolu = ("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:/Users/msi-nb/source/repos/proje/proje/UrunListesi.mdb;Persist Security Info=False;");
            OleDbConnection Baglan = new OleDbConnection(BaglantiYolu);
            Baglan.Open();

            int AnaKategoriID = Convert.ToInt32(drpana.SelectedItem.Value);
            string AltKategoriAdi = txtalt.Text;


            string Sorgu = "INSERT INTO AltKategori (AnaKategoriID,AltKategoriAdi)" + "VALUES (@AnaKategoriID,@AltKategoriAdi)";

            OleDbCommand Komut = new OleDbCommand(Sorgu, Baglan);

            Komut.Parameters.AddWithValue("@AnaKategoriID", AnaKategoriID);
            Komut.Parameters.AddWithValue("@AltKategoriAdi", AltKategoriAdi);

            Komut.ExecuteNonQuery();

            Baglan.Close();
            Komut.Dispose();
            sayfayukleme();
            Response.Write("<div> Alt Kategori Kaydedilmiştir. </div>");
        }

        protected void drpana1_SelectedIndexChanged(object sender, EventArgs e)
        {
            String BaglantiYolu = ("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:/Users/msi-nb/source/repos/proje/proje/UrunListesi.mdb;Persist Security Info=False;");
            OleDbConnection Baglan = new OleDbConnection(BaglantiYolu);
            Baglan.Open();

            int AnaKategoriID = Convert.ToInt32(drpana1.SelectedItem.Value);

            string Sorgu = "SELECT * FROM AltKategori WHERE AnaKategoriID= @AnaKategoriID";

            OleDbCommand Komut = new OleDbCommand(Sorgu, Baglan);
            Komut.Parameters.AddWithValue("@AnaKategoriID", AnaKategoriID);

            OleDbDataReader Okuyucu = Komut.ExecuteReader();

            drpalt.Items.Clear();

            ListItem Eleman = new ListItem();
            Eleman.Text = "Alt Kategori Seç";
            Eleman.Value = "0";

            drpalt.Items.Add(Eleman);

            while (Okuyucu.Read() == true)
            {
                Eleman = new ListItem();
                Eleman.Text = Okuyucu["AltKategoriAdi"].ToString();
                Eleman.Value = Okuyucu["AltKategoriID"].ToString();
                drpalt.Items.Add(Eleman);
            }
        }

        //ÜRÜN KAYIT BUTONU
        protected void btnurun_Click(object sender, EventArgs e)
        {
            String BaglantiYolu = ("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:/Users/msi-nb/source/repos/proje/proje/UrunListesi.mdb;Persist Security Info=False;");
            OleDbConnection Baglan = new OleDbConnection(BaglantiYolu);
            Baglan.Open();

            int AltKategoriID = Convert.ToInt32(drpalt.SelectedItem.Value);

            string UrunMarka = txtmarka.Text;
            string UrunModel = txtmodel.Text;
            string UrunBeden = txtbeden.Text;
            double UrunFiyat = Convert.ToDouble(txtfiyat.Text);

            string Sorgu = "INSERT INTO UrunListe (AltKategoriID, UrunMarka, UrunModel, UrunBeden, UrunFiyat)" + "VALUES (@AltKategoriID, @UrunMarka, @UrunModel, @UrunBeden, @UrunFiyat)";

            OleDbCommand Komut = new OleDbCommand(Sorgu, Baglan);

            Komut.Parameters.AddWithValue("@AltKategoriID", AltKategoriID);
            Komut.Parameters.AddWithValue("@UrunMarka", UrunMarka);
            Komut.Parameters.AddWithValue("@UrunModel", UrunModel);
            Komut.Parameters.AddWithValue("@UrunBeden", UrunBeden);
            Komut.Parameters.AddWithValue("@UrunFiyat", UrunFiyat);

            Komut.ExecuteNonQuery();

            Baglan.Close();
            Komut.Dispose();
            Response.Write("Girdiğiniz Ürün Veritabanına Başarıyla Kaydedildi");
        }

        protected void btngiris_Click(object sender, EventArgs e)
        {
            int x;
            string kullaniciadi, sifre;
            kullaniciadi = txtyonetici.Text;
            sifre = txtsifre.Text;

            if (CheckBox1.Checked == true)
            {
                x = 1;
            }
            else
            {
                x = 0;
            }

            if (kullaniciadi == "Selim" && sifre == "123")
            {
                if (x == 1)
                {
                    HttpCookie crz = new HttpCookie("crz");
                    crz.Values["kullaniciadi"] = kullaniciadi;
                    crz.Expires = DateTime.Today.AddDays(3);
                    Response.Cookies.Add(crz);
                    Response.Redirect("AnaSayfa.aspx");
                }
                else
                {
                    HttpCookie crz = new HttpCookie("crz");
                    crz.Values["kullaniciadi"] = kullaniciadi;
                    Response.Cookies.Add(crz);
                    Response.Redirect("AnaSayfa.aspx");
                }

            }
            else
            {
                lblgiris.Text = "Girdiğiniz bilgiler yanlış.";
            }
            Response.Cookies["crz"].Expires = DateTime.Now.AddDays(-3);
            Response.Redirect("Index.aspx");
        }
    }
}