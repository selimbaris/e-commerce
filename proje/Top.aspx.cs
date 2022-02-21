using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proje
{
    public partial class Top : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String BaglantiYolu = ("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:/Users/msi-nb/source/repos/proje/proje/UrunListesi.mdb;Persist Security Info=False;");
            OleDbConnection Baglan = new OleDbConnection(BaglantiYolu);
            Baglan.Open();

            string Sorgu = "SELECT * FROM UrunListe WHERE AltKategoriID=7";

            OleDbDataAdapter Adapter1 = new OleDbDataAdapter(Sorgu, Baglan);

            DataSet DataSet1 = new DataSet();

            Adapter1.Fill(DataSet1, "UrunListe");

            grdtop.DataSource = DataSet1.Tables["UrunListe"];
            grdtop.DataBind();

            Baglan.Close();
            Baglan.Dispose();
        }
    }
}