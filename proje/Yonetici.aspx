    <%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Yonetici.aspx.cs" Inherits="proje.Yonetici" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
    .kayitbaslik{
        float: left;
        width: 1920px;
        height: 200px;
        text-align: center;
        line-height: 100px;
        color: red;
        background: url('/images/28.png');
        background-size: auto;
        background-repeat: no-repeat;
        background-position: center;
    }
    .girisvekayit{
        float: left;
        width: 100%;
        height:900px;
        position:relative;
        background: url('/images/27.png');
     }
            .girisvekayit .yoneticigiris {
                width: 800px;
                float: left;
                margin-left: 100px;
                position: relative;
                text-align: center;
                font-size: 25px;
                color: #000000;
            }
            .girisvekayit .yoneticigiris h1{
                font-family: 'Cambria', cursive;
                font-size: 40px;
                margin-left: 10px;
                margin-top: 50px;
                border: 1px solid #e74c3c;
                border-radius:20px;
            }
            .girisvekayit .yoneticigiris p{
                text-align:center;
                margin-top: 25px;
            }
            .girisvekayit .yoneticigiris p .a{
                margin-left:80px;
            }
            .girisvekayit .yoneticigiris p .txtyonetici{
                width:300px;
                height: 50px;
                border: solid;
                border-width: 2px;
                border-color: #000000;
                border-radius:10px;
                margin-left: 10px;
            }
            .girisvekayit .yoneticigiris p .txtsifre{
                width:300px;
                height: 50px;
                border: solid;
                border-width: 2px;
                border-color: #000000;
                border-radius:10px;
                margin-left: 20px;
            }
            .girisvekayit .yoneticigiris .btngiris{
                width: 200px;
                height:50px;
                margin-top:20px;
                background-color: #8cf867;
                font-size:20px;
                margin-left: 120px;
                cursor: pointer;
            }
            .girisvekayit .yoneticigiris .lblgiris{
                 margin-left:100px;
            }
    .girisvekayit .urunkayit{
        width: 800px;
        float:left;
        margin-left: 100px;
        position:relative;
        text-align:center;
        font-size:20px;
        color: #000000;
    }
    .girisvekayit .urunkayit h1{
        font-family: 'Bungee', cursive;
        font-size: 30px;
        margin-left:10px;
        margin-top: 50px;
        border: 1px solid #67048f;
        border-radius:20px;
    }
    .girisvekayit .urunkayit .a1{
        height: 80px;
        text-align:center;
        margin-right:100px;
        margin-top:15px;
        border-bottom:1px solid red;
    }
    .girisvekayit .urunkayit .a1 .txtana{
        width:300px;
        height: 40px;
        margin-left:10px;
        border: solid;
        border-width: 2px;
        border-color: #000000;
        border-radius:10px;
    }
    .girisvekayit .urunkayit .a1 .btnana{
        width: 200px;
        height: 50px;
        background-color: #b6ff00;
        cursor: pointer;
        font-size: 20px;
        margin-left:10px;
    }
    .girisvekayit .urunkayit .a2-1{
        text-align:center;
        margin-right:280px;
        margin-top:15px;
    }
    .girisvekayit .urunkayit .a2-1 .drpana{
        width:300px;
        margin-left:10px;
    }
    .girisvekayit .urunkayit .a2-2{
        height:80px;
        text-align:center;
        margin-right:100px;
        margin-top:15px;
        border-bottom:1px solid red;
    }
    .girisvekayit .urunkayit .a2-2 .txtalt{
        width:300px;
        height: 40px;
        margin-left:10px;
        border: solid;
        border-width: 2px;
        border-color: #000000;
        border-radius:10px;
    }
    .girisvekayit .urunkayit .a2-2 .btnalt{
        width: 200px;
        height: 50px;
        background-color: #ffd800;
        cursor: pointer;
        font-size: 20px;
        margin-left:10px;
    }
    .girisvekayit .urunkayit .a3-1{
        text-align:center;
        margin-right:280px;
        margin-top:15px;
    }
    .girisvekayit .urunkayit .a3-1 .drpana1{
        width:300px;
        margin-left:10px;
    }
    .girisvekayit .urunkayit .a3-2{
        text-align:center;
        margin-right:280px;
        margin-top:15px;
    }
    .girisvekayit .urunkayit .a3-2 .drpalt{
        width:300px;
        margin-left:10px;
    }
    .girisvekayit .urunkayit .a3-3{
        text-align:center;
        margin-right:280px;
        margin-top:15px;
    }
    .girisvekayit .urunkayit .a3-3 .txtmarka{
        width:300px;
        height: 40px;
        margin-left:10px;
        border: solid;
        border-width: 2px;
        border-color: #000000;
        border-radius:10px;
    }
    .girisvekayit .urunkayit .a3-4{
        text-align:center;
        margin-right:280px;
        margin-top:15px;
    }
    .girisvekayit .urunkayit .a3-4 .txtmodel{
        width:300px;
        height: 40px;
        margin-left:10px;
        border: solid;
        border-width: 2px;
        border-color: #000000;
        border-radius:10px;
    }
    .girisvekayit .urunkayit .a3-5{
        text-align:center;
        margin-right:280px;
        margin-top:15px;
    }
    .girisvekayit .urunkayit .a3-5 .txtbeden{
        width:300px;
        height: 40px;
        margin-left:10px;
        border: solid;
        border-width: 2px;
        border-color: #000000;
        border-radius:10px;
    }
    .girisvekayit .urunkayit .a3-6{
        text-align:center;
        margin-right:270px;
        margin-top:15px;
    }
    .girisvekayit .urunkayit .a3-6 .txtfiyat{
        width:300px;
        height: 40px;
        margin-left:10px;
        border: solid;
        border-width: 2px;
        border-color: #000000;
        border-radius:10px;

    }
    .girisvekayit .urunkayit .a3-7{
        text-align:center;
        margin-right:100px;
        margin-top:15px;
        border-bottom:1px solid red;
    }
    .girisvekayit .urunkayit .a3-7 .fileupload{
        width:300px;
        height: 40px;
        margin-left:10px;
    }
    .girisvekayit .urunkayit .a3-7 .btnurun{
        width: 200px;
        height: 50px;
        background-color: #8442f2;
        cursor: pointer;
        font-size: 20px;
        margin-left:10px;
    }


        
        </style>
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="kayitbaslik">
  
    </div>
     <div class="girisvekayit">
         <div class="yoneticigiris">
             <h1>Yönetici Giriş</h1>
             <p><span>Kullanıcı Adı</span><asp:TextBox ID="txtyonetici" CssClass="txtyonetici" runat="server"></asp:TextBox></p>
             <p><span class="a">Şifre</span><asp:TextBox ID="txtsifre" CssClass="txtsifre" runat="server" TextMode="Password"></asp:TextBox></p>
             <asp:Button ID="btngiris" CssClass="btngiris" runat="server" Text="Giriş" OnClick="btngiris_Click" /><asp:CheckBox ID="CheckBox1" runat="server" text="Beni Hatırla"/><br /><br />
             <asp:Label ID="lblgiris" CssClass="lblgiris" runat="server" Text="" Height="50px" Width="500px"></asp:Label>
         </div>
         <div class="urunkayit">
             <h1>Ürün Kayıt</h1>
             <p class="a1"><span>Ana Kategori</span><asp:TextBox ID="txtana" CssClass="txtana" runat="server"></asp:TextBox> <asp:Button ID="btnana" CssClass="btnana" runat="server" Text="Ana Kategori Kaydet" OnClick="btnana_Click" /> </p>
             <p class="a2-1"><span>Ana Kategori Seç</span><asp:DropDownList ID="drpana" CssClass="drpana" runat="server" Height="40px"></asp:DropDownList></p>
             <p class="a2-2"><span>Alt Kategori</span><asp:TextBox ID="txtalt" CssClass="txtalt" runat="server"></asp:TextBox><asp:Button ID="btnalt" CssClass="btnalt" runat="server" Text="Alt Kategori Kaydet" OnClick="btnalt_Click" /></p>
             <p class="a3-1"><span>Ana Kategori Seç</span><asp:DropDownList ID="drpana1" CssClass="drpana1" runat="server" Height="40px" AutoPostBack="True" OnSelectedIndexChanged="drpana1_SelectedIndexChanged"></asp:DropDownList></p>
             <p class="a3-2"><span>Alt Kategori Seç</span><asp:DropDownList ID="drpalt" CssClass="drpalt" runat="server" Height="40px"></asp:DropDownList></p>
             <p class="a3-3"><span>Ürün Marka</span><asp:TextBox ID="txtmarka" CssClass="txtmarka" runat="server"></asp:TextBox></p>
             <p class="a3-4"><span>Ürün Model</span><asp:TextBox ID="txtmodel" CssClass="txtmodel" runat="server"></asp:TextBox></p>
             <p class="a3-5"><span>Ürün Beden</span><asp:TextBox ID="txtbeden" CssClass="txtbeden" runat="server"></asp:TextBox></p>
             <p class="a3-6"><span>Ürün Fiyat</span><asp:TextBox ID="txtfiyat" CssClass="txtfiyat" runat="server"></asp:TextBox></p>
             <p class="a3-7"><span>Ürün Fotoğrafı</span><asp:FileUpload ID="fileupload" CssClass="fileupload" runat="server" /><asp:Button ID="btnurun" CssClass="btnurun" runat="server" Text="Ürünü Kaydet" OnClick="btnurun_Click" /></p>
         </div>
     </div>
</asp:Content>
