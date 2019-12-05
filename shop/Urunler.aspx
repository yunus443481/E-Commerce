<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Urunler.aspx.cs" Inherits="shop.Urunler" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">



    
    <section class="breakcrumb bg-grey">
        <div class="container">
            <h3 class="pull-left"><span>Ürünler</span></h3>
            <ul class="nav-breakcrumb  pull-right">
                <li><a href="Default.aspx">Anasayfa/</a></li>
                <script src="js/bootstrap.js"></script>
                <li><span>Ürünler</span></li>
            </ul>
        </div>
    </section>
    

    
    <section class="product-list">
        <div class="container">
            <div class="row">
                <div class="col-md-9 col-md-push-3">

                   
                    <div class="sub-banner">
                        <div class="item">
                            <div class="img">
                                <a href="#">
                                    <img src="images/banner.jpg" alt="" width="870" height="290">
                                </a>
                            </div>
                        </div>
                    </div>
                    

                   
                    <div class="top-filter clearfix">

                        <div class="pull-left">

                           
                            <div class="view  pull-left">
                                <a href="product-grid-1.html" class="view-grid">
                                    <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="19px" height="19px" viewBox="0 0 19 19" enable-background="new 0 0 19 19" xml:space="preserve">
                                        <path d="M8,8H0V0h8V8z M1,7h6V1H1V7z" />
                                        <path d="M19,8h-8V0h8V8z M12,7h6V1h-6V7z" />
                                        <path d="M8,19H0v-8h8V19z M1,18h6v-6H1V18z" />
                                        <path d="M19,19h-8v-8h8V19z M12,18h6v-6h-6V18z" />
                                    </svg>
                                </a>
                                <a href="product-list-1.html" class="view-list active">
                                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="18px" height="19px" viewBox="0 0 18 19" enable-background="new 0 0 18 19" xml:space="preserve">
                                        <path d="M8,8H0V0h8V8z M1,7h6V1H1V7z" />
                                        <rect x="10" width="8" height="1" />
                                        <rect x="10" y="3" width="8" height="1" />
                                        <rect x="10" y="6" width="6" height="1" />
                                        <path d="M8,19H0v-8h8V19z M1,18h6v-6H1V18z" />
                                        <rect x="10" y="11" width="8" height="1" />
                                        <rect x="10" y="14" width="8" height="1" />
                                        <rect x="10" y="17" width="6" height="1" />
                                    </svg>
                                </a>
                            </div>
                           

                        </div>

                        <div class="pull-right">
                            
                            <div class="sort filter-select pull-left">
                                <label for="sort">
                                    Göre sırala:
										<select id="sort">
                                            <option>Pozisyon</option>
                                            <option value="1">Fiyat</option>
                                            <option value="2">Değerlendirme</option>
                                        </select>
                                </label>
                            </div>
                            

                            
                            <div class="show-page filter-select pull-left">
                                <label for="show-page">
                                    Göster:
										<select id="show-page">
                                            <option>12</option>
                                            <option value="1">16</option>
                                            <option value="2">20</option>
                                        </select>
                                </label>
                            </div>
                            

                            <ul class="paging-p  _1 pull-left">
                                <li class="current"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li class="last"><a href="#"></a></li>
                            </ul>
                           
                        </div>

                    </div>
                   

                    
                    <div class="list-cn">
                        <asp:Repeater ID="rpUrunler" runat="server" OnItemCommand="rpUrunler_ItemCommand1">
                            <ItemTemplate>
                                <div class="list-item  _1">

                                    <div class="image">

                                        <a href="UrunDetay.aspx?UrunID=<%#Eval("UrunID") %>">
                                            <img src="UrunImages/<%#Eval("Image") %>">
                                        </a>

                                        &nbsp;&nbsp;&nbsp;

                                    </div>

                                    <div class="text">

                                        <h1 class="name">
                                            <%# Eval("MarkaAdi") %>
                                        </h1>

                                        <br />

                                        <h2 class="name">
                                            <%# Eval("UrunAdi") %>
                                        </h2>

                                        <div class="rating">

                                            <span class="star">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star-half"></i>
                                            </span>

                                            (5) Yorumlar

										<small>|</small>

                                            <a href="#">Yorum Ekle</a>

                                        </div>

                                        <div class="stock">
                                            Stokta var.
                                        </div>

                                        <div class="hr _1"></div>

                                        <div class="sku">
                                            SKU: <span>#038521</span>
                                        </div>

                                        <div class="group">

                                            <div class="price-box">

                                                <p class="special-price">
                                                    <span class="price">
                                                        <%# Eval("BirimFiyati")+" TL" %></span>
                                                </p>


                                            </div>

                                   <div class="action">
<a href="SepeteEkle.aspx?UrunID=<%# Eval("UrunID") %>" class="btn btn-2 btn-add-cart text-uppercase"><i class="fa fa-cart-plus"></i>SEPETE EKLE</a>
                                            </div>

                                  <div class="share">
                                                <span>Paylaş:</span>
                                                <a href="#" class="_1"><i class="fa fa-facebook-square"></i></a>
                                                <a href="#" class="_2"><i class="fa fa-twitter-square"></i></a>
                                                <a href="#" class="_3"><i class="fa fa-pinterest-square"></i></a>
                                            </div>

                                        </div>

                                    </div>

                                </div>
                                

                            </ItemTemplate>
                        </asp:Repeater>

                    </div>
                   

                    
                    <div class="bottom-list clearfix">

                        <div class="pull-left">
                            <p class="text-page">
                                Gösteriliyor : 1 - 5 ile 20 arası
                        </div>

                        <div class="pull-right">
                          
                            <ul class="paging-p  _1 pull-left">
                                <li class="current"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">...</a></li>
                                <li><a href="#">10</a></li>
                                <li class="last"><a href="#"></a></li>
                            </ul>
                         
                        </div>

                    </div>
                    

                </div>

                <div class="col-md-3 col-md-pull-9">

                    <aside class="sidebar sidebar-cat _1">
                        <h2 class="sidebar-title">Ürünler </h2>
                        <ul class="nav-cat ">
                            <asp:Repeater ID="rpAltKategoriler" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <div class="check-box">
                            <a href="Urunler.aspx?KategoriId=<%# Eval("KategoriId") %>"><%# Eval("KategoriAdi") %></a>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </aside>
                   
                </div>
            </div>
        </div>
    </section>

    <section class="partner partner-list">
        <div class="container">

            <div class="heading _1 text-center">
                <h2 class="text-uppercase"> Ortaklarımız </h2>
            </div>

            <div class="partner-cn _1">
                <div id="partner" data-custom="0-2,480-2,768-3,992-4,1200-5">
                    <a href="#">
                        <img src="images/partner/img-6.jpg" alt="">
                    </a>
                    <a href="#">
                        <img src="images/partner/img-7.jpg" alt="">
                    </a>
                    <a href="#">
                        <img src="images/partner/img-8.jpg" alt="">
                    </a>
                    <a href="#">
                        <img src="images/partner/img-9.jpg" alt="">
                    </a>
                    <a href="#">
                        <img src="images/partner/img-10.jpg" alt="">
                    </a>
                    <a href="#">
                        <img src="images/partner/img-7.jpg" alt="">
                    </a>
                    <a href="#">
                        <img src="images/partner/img-8.jpg" alt="">
                    </a>
                </div>

            </div>
        </div>
    </section>
    


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
