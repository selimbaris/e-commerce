<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="proje.AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

.afis {
    float: left;
    text-align: center;
    line-height: 741px;
    width: 100%;
    height: 741px;
    /*background-color: #ff6a00;*/
    background-image: url('/images/1.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    /*background-attachment:local;*/
}

.baslık {
    float: left;
    width: 1920px;
    height: 200px;
    text-align: center;
    line-height: 100px;
    color: red;
    background: url('/images/15.png');
    background-size: auto;
    background-repeat: no-repeat;
    background-position: center;
}

.kart {
    width: 300px;
    float: left;
    margin-left: 50px;
    display: grid;
    grid-template-columns: 300px;
    grid-template-rows: 210px 210px 80px;
    grid-template-areas: "foto" "metin" "stats";
    font-family: roboco;
    border-radius: 18px;
    background: white;
    box-shadow: 5px 5px 15px rgba(0,0,0,0.9);
    text-align: center;
    transition: 0.5s ease;
    cursor: pointer;
}

.kart-foto {
    grid-area: foto;
    background: url('/images/3.jpg') #fff;
    border-top-left-radius: 15px;
    border-top-right-radius: 15px;
    background-size: cover;
}

.kart-metin {
    grid-area: metin;
    margin: 15px;
}

    .kart-metin .kart-ismi {
        color: rgb(255,7,110);
        font-size: 13px;
    }

    .kart-metin h3 {
        color: grey;
        font-size: 15px;
        font-weight: 300;
    }

    .kart-metin h2 {
        margin-top: 10px;
        font-size: 25px;
    }

.kart-stats {
    grid-area: stats;
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
    grid-template-rows: 1fr;
    border-bottom-left-radius: 15px;
    border-bottom-right-radius: 15px;
    background: rgb(255,7,110);
}

    .kart-stats .stat {
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
        padding: 10px;
        color: white;
    }

    .kart-stats .type {
        font-size: 11px;
        font-weight: 300;
        text-transform: uppercase;
    }

    .kart-stats .value {
        font-size: 22px;
        font-weight: 500;
    }

    .kart-stats .border {
        border-left: 1px solid rgb(172,26,87);
        border-right: 1px solid rgb(172,26,87);
    }

.kart:hover {
    transform: scale(1.2);
    box-shadow: 5px 5px 15px rgba(0,0,0,0.6)
}

.kart2 {
    width: 300px;
    float: left;
    margin-left: 200px;
    display: grid;
    grid-template-columns: 300px;
    grid-template-rows: 210px 210px 80px;
    grid-template-areas: "foto" "metin" "stats";
    font-family: roboco;
    border-radius: 18px;
    background: white;
    box-shadow: 5px 5px 15px rgba(0,0,0,0.9);
    text-align: center;
    transition: 0.5s ease;
    cursor: pointer;
}

.kart2-foto {
    grid-area: foto;
    background: url('/images/4.jpg') #fff;
    border-top-left-radius: 15px;
    border-top-right-radius: 15px;
    background-size: cover;
}

.kart2-metin {
    grid-area: metin;
    margin: 15px;
}

    .kart2-metin .kart2-ismi {
        color: rgb(255,7,110);
        font-size: 13px;
    }

    .kart2-metin h3 {
        color: grey;
        font-size: 15px;
        font-weight: 300;
    }

    .kart2-metin h2 {
        margin-top: 10px;
        font-size: 25px;
    }

.kart2-stats {
    grid-area: stats;
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
    grid-template-rows: 1fr;
    border-bottom-left-radius: 15px;
    border-bottom-right-radius: 15px;
    background: rgb(20, 229, 203);
}

    .kart2-stats .stat {
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
        padding: 10px;
        color: white;
    }

    .kart2-stats .type {
        font-size: 11px;
        font-weight: 300;
        text-transform: uppercase;
    }

    .kart2-stats .value {
        font-size: 22px;
        font-weight: 500;
    }

    .kart2-stats .border {
        border-left: 1px solid rgb(172,26,87);
        border-right: 1px solid rgb(172,26,87);
    }

.kart2:hover {
    transform: scale(1.2);
    box-shadow: 5px 5px 15px rgba(0,0,0,0.6)
}

.kart3 {
    width: 300px;
    float: left;
    margin-left: 200px;
    display: grid;
    grid-template-columns: 300px;
    grid-template-rows: 210px 210px 80px;
    grid-template-areas: "foto" "metin" "stats";
    font-family: roboco;
    border-radius: 18px;
    background: white;
    box-shadow: 5px 5px 15px rgba(0,0,0,0.9);
    text-align: center;
    transition: 0.5s ease;
    cursor: pointer;
}

.kart3-foto {
    grid-area: foto;
    background: url('/images/5.jpeg') #fff;
    border-top-left-radius: 15px;
    border-top-right-radius: 15px;
    background-size: cover;
}

.kart3-metin {
    grid-area: metin;
    margin: 15px;
}
    .kart3-metin .kart3-ismi {
        color: rgb(255,7,110);
        font-size: 13px;
    }
    .kart3-metin h3 {
        color: grey;
        font-size: 15px;
        font-weight: 300;
    }
    .kart3-metin h2 {
        margin-top: 10px;
        font-size: 25px;
    }
.kart3-stats {
    grid-area: stats;
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
    grid-template-rows: 1fr;
    border-bottom-left-radius: 15px;
    border-bottom-right-radius: 15px;
    background: rgb(116, 241, 18);
}
    .kart3-stats .stat {
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
        padding: 10px;
        color: white;
    }
    .kart3-stats .type {
        font-size: 11px;
        font-weight: 300;
        text-transform: uppercase;
    }
    .kart3-stats .value {
        font-size: 22px;
        font-weight: 500;
    }
    .kart3-stats .border {
        border-left: 1px solid rgb(172,26,87);
        border-right: 1px solid rgb(172,26,87);
    }
.kart3:hover {
    transform: scale(1.2);
    box-shadow: 5px 5px 15px rgba(0,0,0,0.6)
}
.kart4 {
    width: 300px;
    float: left;
    margin-left: 200px;
    display: grid;
    grid-template-columns: 300px;
    grid-template-rows: 210px 210px 80px;
    grid-template-areas: "foto" "metin" "stats";
    font-family: roboco;
    border-radius: 18px;
    background: white;
    box-shadow: 5px 5px 15px rgba(0,0,0,0.9);
    text-align: center;
    transition: 0.5s ease;
    cursor: pointer;
}
.kart4-foto {
    grid-area: foto;
    background: url('/images/6.png') #fff;
    border-top-left-radius: 15px;
    border-top-right-radius: 15px;
    background-size: cover;
}
.kart4-metin {
    grid-area: metin;
    margin: 15px;
}
    .kart4-metin .kart4-ismi {
        color: rgb(255,7,110);
        font-size: 13px;
    }
    .kart4-metin h3 {
        color: grey;
        font-size: 15px;
        font-weight: 300;
    }
    .kart4-metin h2 {
        margin-top: 10px;
        font-size: 25px;
    }
.kart4-stats {
    grid-area: stats;
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
    grid-template-rows: 1fr;
    border-bottom-left-radius: 15px;
    border-bottom-right-radius: 15px;
    background: rgb(239, 248, 5);
}
    .kart4-stats .stat {
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
        padding: 10px;
        color: white;
    }
    .kart4-stats .type {
        font-size: 11px;
        font-weight: 300;
        text-transform: uppercase;
    }
    .kart4-stats .value {
        font-size: 22px;
        font-weight: 500;
    }
    .kart4-stats .border {
        border-left: 1px solid rgb(172,26,87);
        border-right: 1px solid rgb(172,26,87);
    }
.kart4:hover {
    transform: scale(1.2);
    box-shadow: 5px 5px 15px rgba(0,0,0,0.6)
}
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    <div class="afis">
                
            </div> 
    <div class="baslık">
                 
            </div>
            
            <div class="kart">
                <div class="kart-foto"></div>
                <div class="kart-metin">
                    <span class="kart-ismi">Nike LeBron 18 x Mbappe</span>
                    <h2>999,90TL</h2>
                    <h3> ▲  1.859,90TL  ▲</h3>               
                </div>
                <div class="kart-stats">
                    <div class="stat">
                        <div class="value">4</div>
                        <div class="type">gün</div>
                    </div>
                    <div class="stat border">
                        <div class="value">16</div>
                        <div class="type">saat</div>
                    </div>
                    <div class="stat">
                        <div class="value">23</div>
                        <div class="type">dakika</div>
                    </div>
                </div>
            </div>
            <div class="kart2">
                <div class="kart2-foto"></div>
                <div class="kart2-metin">
                    <span class="kart2-ismi">Toronto Raptors Vince Carter Retro Forma</span>
                    <h2>549,90</h2>
                    <h3> ▲  849,90TL  ▲</h3>
                </div>
                <div class="kart2-stats">
                    <div class="stat">
                        <div class="value">2</div>
                        <div class="type">gün</div>
                    </div>

                    <div class="stat border">
                        <div class="value">6</div>
                        <div class="type">saat</div>
                    </div>

                    <div class="stat">
                        <div class="value">55</div>
                        <div class="type">dakika</div>
                    </div>
                </div>    
            </div>
            <div class="kart3">
                <div class="kart3-foto"></div>
                <div class="kart3-metin">
                    <span class="kart3-ismi">NIKE 'BRASILIA DUFF SPOR ÇANTA'</span>
                    <h2>199,90TL</h2>
                    <h3> ▲  299,90TL  ▲ </h3>
                </div>
                <div class="kart3-stats">
                    <div class="stat">
                        <div class="value">10</div>
                        <div class="type">gün</div>
                    </div>
                    <div class="stat border">
                        <div class="value">19</div>
                        <div class="type">saat</div>
                    </div>
                    <div class="stat">
                        <div class="value">59</div>
                        <div class="type">dakika</div>
                    </div>
                </div>
            </div>
            <div class="kart4">
                <div class="kart4-foto"></div>
                <div class="kart4-metin">
                    <span class="kart4-ismi">NEW ERA TIMBERWOLVES CAP</span>
                    <h2>119,90TL</h2>
                    <h3> ▲  249,90TL  ▲ </h3>
                </div>
                <div class="kart4-stats">
                    <div class="stat">
                        <div class="value">2</div>
                        <div class="type">gün</div>
                    </div>
                    <div class="stat border">
                        <div class="value">9</div>
                        <div class="type">saat</div>
                    </div>
                    <div class="stat">
                        <div class="value">35</div>
                        <div class="type">dakika</div>
                    </div>
                </div>
            </div>
</asp:Content>
