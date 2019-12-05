<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UrunDetay.aspx.cs" Inherits="shop.UrunDetay" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    
    <section class="breakcrumb">
        <div class="container">
            <ul class="nav-breakcrumb ">
                <li><a href="Default.aspx">Anasayfa</a></li>
                <li><a href="#">Ürünler</a></li>
                <li><span>Ürün Detay</span></li>
            </ul>
        </div>
    </section>
    

    
    <asp:Repeater ID="rpUrunDetay" runat="server">
                    <ItemTemplate>
    <section class="product-detail _3 ">
        <div class="container">

            <div class="row">

                <div class="col-l text-center">

                    <div class="product-image _1">

                        <div class="image-block">

                           

                            <a id="view_full_size" class="fancybox" href="images/product/detail/img-3.jpg">
                               <img src="BigUrunImages/<%#Eval("BigImage") %>"/>
                                <span class="view-link"></span>
                            </a>

                        </div>

                       
            
                    </div>

                </div>
                
                        <div class="col-r">

                            <div class="text">
                            <h1 class="name"><%# Eval("MarkaAdi") %></h1>
                        
                                <h2 class="name"><%# Eval("UrunAdi") %></h2>


                                <span class="product_stock">Stokta Var</span>
                                <div class="hr _1"></div>
                                <span class="product_sku">Ürün Kodu: <span>#8423084</span></span>

                                <div class="hr _1"></div>
                                <br /><br />
                                <div class="price-box">

                                    <p class="special-price">
                                       
                                        <span class="price"><%# Eval("BirimFiyati")+" TL" %> </span>
                                    </p>

                                </div>


                                <div class="hr _1"></div>

                               </ItemTemplate>
                </asp:Repeater>

                                <div class="add-to-box clearfix">

                                    <div class="input-content">

                                        <label for="qty">Adet:</label>

                                        <div class="qty-box">
                                            <asp:TextBox ID="UrunAdet" runat="server"></asp:TextBox>

                                        </div>

                                    </div>

                                    <div class="add-to-cart">
                                        <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-16 text-uppercase" OnClick="LinkButton1_Click"><i class="fa fa-cart-plus"></i><span>Sepete Ekle</span></asp:LinkButton>
                                    </div>

                                </div>

                            </div>

                        </div>
                    

            </div>

            <div class="product-collateral" id="tabs-responsive">
                <ul class="nav-tab">

                    <li class="active"><a href="#description" aria-controls="description" data-toggle="tab">Ürün Açıklaması</a></li>

                    <li><a href="#information" aria-controls="information" data-toggle="tab">Bilgi</a></li>

                    <li><a href="#customer" aria-controls="customer" data-toggle="tab">Müşteri Yorumlar (12)</a></li>

                    <li><a href="#shipping" aria-controls="shipping" data-toggle="tab">Nakliye &amp; İade</a></li>

                    <li><a href="#tags" aria-controls="tags" data-toggle="tab">Ürün Etiketleri</a></li>
                    <li><a href="#custum" aria-controls="custum" data-toggle="tab">Özel Sekme</a></li>
                </ul>

                <div class="tab-content">

                    <div class="tab-pane active in" id="description">
                        <div class="text-content">
                           
                        </div>
                    </div>

                    <div class="tab-pane" id="information">
                        <div class="text-content">
                            <p>
                                Lorem ipsum dolor sit amet, an munere tibique consequat mel, congue albucius no qui, at everti meliore erroribus sea. Vero graeco cotidieque ea duo, in eirmod insolens interpretaris nam. Pro at nostrud percipit definitiones, eu tale porro cum. Sea ne accusata voluptatibus. Ne cum falli dolor voluptua, duo ei sonet choro facilisis, labores officiis torquatos cum ei.
							
                            </p>

                            <br>

                            <p>
                                Cum altera mandamus in, mea verear disputationi et. Vel regione discere ut, legere expetenda ut eos. In nam nibh invenire similique. Atqui mollis ea his, ius graecis accommodare te. No eam tota nostrum cotidieque. Est cu nibh clita. Sed an nominavi maiestatis, et duo corrumpit constituto, duo id rebum lucilius. Te eam iisque deseruisse, ipsum euismod his at. Eu putent habemus voluptua sit, sit cu rationibus scripserit, modus voluptaria ex per. Aeque dicam consulatu eu his, probatus neglegentur disputationi sit et. Ei nec ludus epicuri petentium, vis appetere maluisset ad. Et hinc exerci utinam cum. Sonet saperet nominavi est at, vel eu sumo tritani. Cum ex minim legere.
							
                            </p>
                            <br>
                            <p>
                                Eos cu utroque inermis invenire, eu pri alterum antiopam. Nisl erroribus definitiones nec an, ne mutat scripserit est. Eros veri ad pri. An soleat maluisset per. Has eu idque similique, et blandit scriptorem necessitatibus mea. Vis quaeque ocurreret ea.
                            </p>
                        </div>
                    </div>

                    <div class="tab-pane" id="customer">

                        <div class="text-content">
                            <p>
                                Beautiful green skirt featuring crossed fabric overlays at front and back. Zip/hook closure at side, fully lined. By Finders Keepers.
							
                            </p>
                            <br>
                            <p>* Polyester/Elastane; Lining: Polyester</p>
                            <p>* 26"/66 waist </p>
                            <p>* 17.5"/44.5cm length </p>
                            <p>* Model is wearing size small </p>
                            <p>* Measurements taken from size small </p>
                            <p>* Dry clean only</p>
                            <p>* Imported </p>
                            <p>* Can’t live without: Love</p>
                            <p>* Tell us a secret: I never go anywhere in public without mascara.</p>
                        </div>

                    </div>

                    <div class="tab-pane" id="shipping">

                        <div class="text-content">
                            <p>
                                Beautiful green skirt featuring crossed fabric overlays at front and back. Zip/hook closure at side, fully lined. By Finders Keepers.
							
                            </p>
                            <br>
                            <p>* Polyester/Elastane; Lining: Polyester</p>
                            <p>* 26"/66 waist </p>
                            <p>* 17.5"/44.5cm length </p>
                            <p>* Model is wearing size small </p>
                            <p>* Measurements taken from size small </p>
                            <p>* Dry clean only</p>
                            <p>* Imported </p>
                            <p>* Can’t live without: Love</p>
                            <p>* Tell us a secret: I never go anywhere in public without mascara.</p>
                        </div>

                    </div>

                    <div class="tab-pane" id="tags">

                        <div class="text-content">
                            <p>
                                Lorem ipsum dolor sit amet, an munere tibique consequat mel, congue albucius no qui, at everti meliore erroribus sea. Vero graeco cotidieque ea duo, in eirmod insolens interpretaris nam. Pro at nostrud percipit definitiones, eu tale porro cum. Sea ne accusata voluptatibus. Ne cum falli dolor voluptua, duo ei sonet choro facilisis, labores officiis torquatos cum ei.
							
                            </p>

                            <br>

                            <p>
                                Cum altera mandamus in, mea verear disputationi et. Vel regione discere ut, legere expetenda ut eos. In nam nibh invenire similique. Atqui mollis ea his, ius graecis accommodare te. No eam tota nostrum cotidieque. Est cu nibh clita. Sed an nominavi maiestatis, et duo corrumpit constituto, duo id rebum lucilius. Te eam iisque deseruisse, ipsum euismod his at. Eu putent habemus voluptua sit, sit cu rationibus scripserit, modus voluptaria ex per. Aeque dicam consulatu eu his, probatus neglegentur disputationi sit et. Ei nec ludus epicuri petentium, vis appetere maluisset ad. Et hinc exerci utinam cum. Sonet saperet nominavi est at, vel eu sumo tritani. Cum ex minim legere.
							
                            </p>
                            <br>
                            <p>
                                Eos cu utroque inermis invenire, eu pri alterum antiopam. Nisl erroribus definitiones nec an, ne mutat scripserit est. Eros veri ad pri. An soleat maluisset per. Has eu idque similique, et blandit scriptorem necessitatibus mea. Vis quaeque ocurreret ea.
                            </p>
                        </div>

                    </div>

                    <div class="tab-pane" id="custum">

                        <div class="text-content">
                            <p>
                                Beautiful green skirt featuring crossed fabric overlays at front and back. Zip/hook closure at side, fully lined. By Finders Keepers.
							
                            </p>
                            <br>
                            <p>* Polyester/Elastane; Lining: Polyester</p>
                            <p>* 26"/66 waist </p>
                            <p>* 17.5"/44.5cm length </p>
                            <p>* Model is wearing size small </p>
                            <p>* Measurements taken from size small </p>
                            <p>* Dry clean only</p>
                            <p>* Imported </p>
                            <p>* Can’t live without: Love</p>
                            <p>* Tell us a secret: I never go anywhere in public without mascara.</p>
                        </div>

                    </div>

                </div>

            </div>

        </div>
    </section>
    

    
    <section class="product-related">
        <div class="container">

            <div class="heading _3 text-center">
                <h2 class="text-uppercase">Related Products</h2>
            </div>

            <div class="related-cn _3">
                <div class="row">

                    <div id="related-slide" data-custom="0-1,480-2,768-2,992-3,1200-4">

                      
                        <div class="grid-item _3 ">

                            <div class="image">

                                <a href="product-detail-3.html">
                                    <img src="images/product/bag/img-1.jpg" alt="">
                                </a>

                                <div class="rating-view">

                                    <a href="product-detail-3.html" class="btn btn-16"><i class="fa fa-eye"></i></a>

                                    <div class="rating">

                                        <span class="star">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-half"></i>
                                        </span>

                                        3 Review(s)

									
                                    </div>

                                </div>

                            </div>

                            <div class="text">

                                <h2 class="name">
                                    <a href="product-detail-2.html">Graphic Crew Neck Tee</a>
                                </h2>

                                <div class="price-box">

                                    <p class="special-price">
                                        <span class="price">£236.99</span>
                                    </p>

                                </div>

                                <div class="action">

                                    <a href="#" class="btn btn-12 round"><i class="fa fa-heart-o"></i></a>

                                    <a href="#" class="btn btn-16 add-cart text-uppercase"><i class="fa fa-cart-plus"></i><span>add to cart</span></a>

                                    <a href="#" class="btn btn-12 round"><i class="fa fa-refresh"></i></a>

                                </div>

                            </div>

                        </div>
                        

                       
                        <div class="grid-item _3 ">

                            <div class="image">

                                <a href="product-detail-3.html">
                                    <img src="images/product/bag/img-2.jpg" alt="">
                                </a>

                                <div class="rating-view">

                                    <div class="view-r">
                                        <a href="product-detail-3.html" class="btn btn-16"><i class="fa fa-eye"></i></a>
                                    </div>

                                    <div class="rating">

                                        <span class="star">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-half"></i>
                                        </span>

                                        3 Review(s)

									
                                    </div>

                                </div>

                                <span class="state-box _4">Hot</span>

                            </div>

                            <div class="text">

                                <h2 class="name">
                                    <a href="product-detail-2.html">The North Face Adena Shirt</a>
                                </h2>

                                <div class="price-box">

                                    <p class="special-price">
                                        <span class="price">£236.99</span>
                                    </p>

                                </div>

                                <div class="action">

                                    <a href="#" class="btn btn-12 round"><i class="fa fa-heart-o"></i></a>

                                    <a href="#" class="btn btn-16 add-cart text-uppercase"><i class="fa fa-cart-plus"></i><span>add to cart</span></a>

                                    <a href="#" class="btn btn-12 round"><i class="fa fa-refresh"></i></a>

                                </div>

                            </div>

                        </div>
                       

                        
                        <div class="grid-item _3 ">

                            <div class="image">

                                <a href="product-detail-3.html">
                                    <img src="images/product/bag/img-1.jpg" alt="">
                                </a>

                                <div class="rating-view">

                                    <div class="view-r">
                                        <a href="product-detail-3.html" class="btn btn-16"><i class="fa fa-eye"></i></a>
                                    </div>

                                    <div class="rating">

                                        <span class="star">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-half"></i>
                                        </span>

                                        3 Review(s)

									
                                    </div>

                                </div>

                                <span class="state-box _6">Sale</span>

                            </div>

                            <div class="text">

                                <h2 class="name">
                                    <a href="product-detail-2.html">Obey Obey Star' 96 Tee</a>
                                </h2>

                                <div class="price-box">

                                    <p class="special-price">
                                        <span class="price">£236.99</span>
                                    </p>

                                </div>

                                <div class="action">

                                    <a href="#" class="btn btn-12 round"><i class="fa fa-heart-o"></i></a>

                                    <a href="#" class="btn btn-16 add-cart text-uppercase"><i class="fa fa-cart-plus"></i><span>add to cart</span></a>

                                    <a href="#" class="btn btn-12 round"><i class="fa fa-refresh"></i></a>

                                </div>

                            </div>

                        </div>
                        

                        
                        <div class="grid-item _3 ">

                            <div class="image">

                                <a href="product-detal-3.html">
                                    <img src="images/product/bag/img-4.jpg" alt="">
                                </a>

                                <div class="rating-view">

                                    <a href="product-detail-3.html" class="btn btn-16"><i class="fa fa-eye"></i></a>

                                    <div class="rating">

                                        <span class="star">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-half"></i>
                                        </span>

                                        3 Review(s)

									
                                    </div>

                                </div>

                            </div>

                            <div class="text">

                                <h2 class="name">
                                    <a href="product-detail-2.html">Graphic Crew Neck Tee</a>
                                </h2>

                                <div class="price-box">

                                    <p class="special-price">
                                        <span class="price">£236.99</span>
                                    </p>

                                </div>

                                <div class="action">

                                    <a href="#" class="btn btn-12 round"><i class="fa fa-heart-o"></i></a>

                                    <a href="#" class="btn btn-16 add-cart text-uppercase"><i class="fa fa-cart-plus"></i><span>add to cart</span></a>

                                    <a href="#" class="btn btn-12 round"><i class="fa fa-refresh"></i></a>

                                </div>

                            </div>

                        </div>
                        

                        
                        <div class="grid-item _3 ">

                            <div class="image">

                                <a href="product-detail-3.html">
                                    <img src="images/product/bag/img-5.jpg" alt="">
                                </a>

                                <div class="rating-view">

                                    <div class="view-r">
                                        <a href="product-detail-3.html" class="btn btn-16"><i class="fa fa-eye"></i></a>
                                    </div>

                                    <div class="rating">

                                        <span class="star">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-half"></i>
                                        </span>

                                        3 Review(s)

									
                                    </div>

                                </div>

                            </div>

                            <div class="text">

                                <h2 class="name">
                                    <a href="product-detail-2.html">The North Face Adena Shirt</a>
                                </h2>

                                <div class="price-box">

                                    <p class="special-price">
                                        <span class="price">£236.99</span>
                                    </p>

                                </div>

                                <div class="action">

                                    <a href="#" class="btn btn-12 round"><i class="fa fa-heart-o"></i></a>

                                    <a href="#" class="btn btn-16 add-cart text-uppercase"><i class="fa fa-cart-plus"></i><span>add to cart</span></a>

                                    <a href="#" class="btn btn-12 round"><i class="fa fa-refresh"></i></a>

                                </div>

                            </div>

                        </div>
                        

                        
                        <div class="grid-item _3 ">

                            <div class="image">

                                <a href="product-detail-3.html">
                                    <img src="images/product/bag/img-6.jpg" alt="">
                                </a>

                                <div class="rating-view">

                                    <div class="view-r">
                                        <a href="product-detail-3.html" class="btn btn-16"><i class="fa fa-eye"></i></a>
                                    </div>

                                    <div class="rating">

                                        <span class="star">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-half"></i>
                                        </span>

                                        3 Review(s)

									
                                    </div>

                                </div>

                                <span class="state-box _4">New</span>

                            </div>

                            <div class="text">

                                <h2 class="name">
                                    <a href="product-detail-2.html">Obey Obey Star' 96 Tee</a>
                                </h2>

                                <div class="price-box">

                                    <p class="special-price">
                                        <span class="price">£236.99</span>
                                    </p>

                                </div>

                                <div class="action">

                                    <a href="#" class="btn btn-12 round"><i class="fa fa-heart-o"></i></a>

                                    <a href="#" class="btn btn-16 add-cart text-uppercase"><i class="fa fa-cart-plus"></i><span>add to cart</span></a>

                                    <a href="#" class="btn btn-12 round"><i class="fa fa-refresh"></i></a>

                                </div>

                            </div>

                        </div>
                     

                    </div>

                </div>

            </div>

        </div>
    </section>
    

    
    <section class="partner partner-detail-3">
        <div class="container">

            <div class="heading _3 text-center">
                <h2 class="text-uppercase">Popular Brands</h2>
            </div>

            <div class="partner-cn _3">
                <div id="partner" data-custom="0-1,480-2,768-3,992-4,1200-5">
                    <a href="#">
                        <img src="images/partner/img-1.jpg" alt="">
                    </a>
                    <a href="#">
                        <img src="images/partner/img-2.jpg" alt="">
                    </a>
                    <a href="#">
                        <img src="images/partner/img-3.jpg" alt="">
                    </a>
                    <a href="#">
                        <img src="images/partner/img-4.jpg" alt="">
                    </a>
                    <a href="#">
                        <img src="images/partner/img-5.jpg" alt="">
                    </a>
                    <a href="#">
                        <img src="images/partner/img-3.jpg" alt="">
                    </a>
                </div>
            </div>
        </div>
    </section>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
