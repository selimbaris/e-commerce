<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Tisort.aspx.cs" Inherits="proje.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
.tisort{
    float: left;
    width: 100%;
}
.tisort .afis{
    float: left;
    text-align: center;
    width: 1920px;
    height: 500px;
    background-image: url('/images/20.jpeg');
    background-size: auto;
    background-repeat: no-repeat;
    background-position:center;
}
.tisort .grid .grdtisort{
    width:auto;
    height:auto;
    text-align: center;
    margin-left: 330px;
    position: relative;
    border-top:1px solid #ff6a00;
}
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="tisort">
        <div class="afis">

        </div>
        <div class="grid">
            <asp:GridView ID="grdtisort" CssClass="grdtisort" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" >

                <Columns>

                    <asp:TemplateField HeaderText="Ürün Marka">
                        <ItemTemplate>
                            <asp:Label runat="server" Width="100px" Text='<%# Eval("UrunMarka")%>'/>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Ürün Model">
                        <ItemTemplate>
                            <asp:Label runat="server" Width="300px" Text='<%# Eval("UrunModel")%>'/>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Ürün Beden">
                        <ItemTemplate>
                            <asp:Label runat="server" Width="300px" Text='<%# Eval("UrunBeden")%>'/>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Ürün Fiyat">
                        <ItemTemplate>
                            <asp:Label runat="server" Width="300px" Text='<%# Eval("UrunFiyat")%>'/>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Ürün Fotoğraf">
                        <ItemTemplate>
                            <asp:Image ID="resim" runat="server" Width="150px" Height="150px" ImageUrl='<%# Eval("UrunFoto", ResolveUrl("~/Resimler/{0}"))%>'/>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Sepete Ekle">
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Width="100px" />
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>

                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />

            </asp:GridView>
        </div>
    </div>
</asp:Content>
