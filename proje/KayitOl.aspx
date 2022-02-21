<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="KayitOl.aspx.cs" Inherits="proje.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

.kayitbaslik{
    float: left;
    width: 1920px;
    height: 200px;
    text-align: center;
    line-height: 100px;
    color: red;
    background: url('/images/11.png');
    background-size: auto;
    background-repeat: no-repeat;
    background-position: center;
}
.girisvekayit{
    float: left;
    width: 100%;
    height:800px;
    position:relative;
    background: url('/images/27.png');
}
.girisvekayit .kayitol{
    width: 800px;
    float:left;
    position:relative;
    text-align:center;
    font-size:30px;
    color: #000000;
}
.girisvekayit .kayitol h1{
    font-family: 'Bungee', cursive;
    font-size: 30px;
    margin-left:10px;
    margin-top: 50px;
    border: 1px solid #67048f;
    border-radius:20px;
}
.girisvekayit .kayitol p{
    text-align:center;
    /*line-height: 50px;*/
    margin-right:100px;
    margin-top:15px;
}
.girisvekayit .kayitol p span{
    margin-right:50px;
    line-height: 50px;
}
.girisvekayit .kayitol p .txtAd{
    width:300px;
    height: 50px;
    border: solid;
    border-width: 2px;
    border-color: #000000;
    border-radius:10px;
    margin-left:60px;
}
.girisvekayit .kayitol p .txtSoyad{
    width:300px;
    height: 50px;
    border: solid;
    border-width: 2px;
    border-color: #000000;
    border-radius:10px;
    margin-left:22px;
}
.girisvekayit .kayitol p .txtSifre{
    width:300px;
    height: 50px;
    border: solid;
    border-width: 2px;
    border-color: #000000;
    border-radius:10px;
    margin-left:39px;
}
.girisvekayit .kayitol p .txtKullanici{
    width:300px;
    height: 50px;
    border: solid;
    border-width: 2px;
    border-color: #000000;
    border-radius:10px;
    margin-right:66px;
}
.girisvekayit .kayitol p .txtTc{
    width:300px;
    height: 50px;
    border: solid;
    border-width: 2px;
    border-color: #000000;
    border-radius:10px;
    margin-right:65px;
}
.girisvekayit .kayitol p .txtTel{
    width:300px;
    height: 50px;
    border: solid;
    border-width: 2px;
    border-color: #000000;
    border-radius:10px;
    margin-right:41px;
}
.girisvekayit .kayitol p .txtPosta{
    width:300px;
    height: 50px;
    border: solid;
    border-width: 2px;
    border-color: #000000;
    border-radius:10px;
    margin-left:5px;
}
.girisvekayit .kayitol .btnKayit{
    width: 200px;
    height:50px;
    margin-top:20px;
    background-color: #696060;
    font-size:20px;
    margin-left: 50px;
    cursor: pointer;
}
.girisvekayit .girisyap{
    width: 800px;
    float:left;
    margin-left: 200px;
    position:relative;
    text-align:center;
    font-size:25px;
    color: #000000;
}
.girisvekayit .girisyap h1{
    font-family: 'Cambria', cursive;
    font-size: 40px;
    margin-left:10px;
    margin-top: 50px;
    border: 1px solid #e74c3c;
    border-radius:20px;
}
.girisvekayit .girisyap p{
    margin-top: 25px;
    text-align:center;
}
.girisvekayit .girisyap p .a{
    margin-left: 80px;
}
.girisvekayit .girisyap p .txtKullanici2{
    width:300px;
    height: 50px;
    border: solid;
    border-width: 2px;
    border-color: #000000;
    border-radius:10px;
    margin-left: 10px;
}
.girisvekayit .girisyap p .txtSifre2{
    width:300px;
    height: 50px;
    border: solid;
    border-width: 2px;
    border-color: #000000;
    border-radius:10px;
    margin-left: 20px;
}
.girisvekayit .girisyap .btnGiris{
    width: 200px;
    height:50px;
    margin-top:20px;
    background-color: #8cf867;
    font-size:20px;
    margin-left: 120px;
    cursor: pointer;
}
.girisvekayit .girisyap .lblGiris{
    margin-left:100px;
}


    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="kayitbaslik">
  
    </div>

    <div class="girisvekayit">
        <div class="kayitol">
            <h1>Kayıt Formu</h1>
            <p><span>Ad</span> <asp:TextBox ID="txtAd"  CssClass="txtAd" runat="server"></asp:TextBox>  </p>
            <p><span>Soyad</span> <asp:TextBox ID="txtSoyad"  CssClass="txtSoyad" runat="server"></asp:TextBox>  </p>
            <p><span>Şifre</span> <asp:TextBox ID="txtSifre"  CssClass="txtSifre" runat="server" TextMode="Password"></asp:TextBox>  </p>
            <p><span>Kullanıcı Adı</span> <asp:TextBox ID="txtKullanici"  CssClass="txtKullanici" runat="server"></asp:TextBox>  </p>
            <p><span>Tc Kimlik No</span> <asp:TextBox ID="txtTc"  CssClass="txtTc" runat="server"></asp:TextBox>  </p>
            <p><span>Telefon No</span> <asp:TextBox ID="txtTel"  CssClass="txtTel" runat="server"></asp:TextBox>  </p>
            <p><span>E-posta</span> <asp:TextBox ID="txtPosta"  CssClass="txtPosta" runat="server"></asp:TextBox>  </p>
            <asp:Button ID="btnKayit" CssClass="btnKayit" runat="server" Text="KAYIT OL" OnClick="btnKayit_Click" /><br /><br />
            <asp:Label ID="lblKayit" CssClass="lblKayit" runat="server" Text="" Height="50px" Width="500px"></asp:Label>
        </div>
        <div class="girisyap">
            <h1>Giriş</h1>
            <p><span>Kullanıcı Adı</span><asp:TextBox ID="txtKullanici2" CssClass="txtKullanici2" runat="server"></asp:TextBox></p>
            <p><span class="a">Şifre</span><asp:TextBox ID="txtSifre2" CssClass="txtSifre2" runat="server"></asp:TextBox></p>
            <asp:Button ID="btnGiris" CssClass="btnGiris" runat="server" Text="Giriş Yap" OnClick="btnGiris_Click" /><asp:CheckBox ID="CheckBox1" runat="server" Text="Beni Hatırla" /><br /><br />
            <asp:Label ID="lblGiris" CssClass="lblGiris" runat="server" Text=""  Height="50px" Width="500px" ></asp:Label>
        </div>
    </div>
</asp:Content>
