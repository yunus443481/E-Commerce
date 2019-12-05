<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sepet.aspx.cs" Inherits="shop.Sepet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">



    
    <section class="breakcrumb bg-grey">
        <div class="container">
            <h3 class="pull-left">Sepet</h3>
            <ul class="nav-breakcrumb  pull-right">
                <li><a href="Default.aspx">Anasayfa</a></li>
                <li><span></span></li>
            </ul>

        </div>
    </section>
    

  
    <section class="shop-cart">
        <div class="container">

            
            <div class="table-cn ">
                <table class="table table-cart">
                    <thead>
                        <tr>
                            <th>Ürün</th>
                            <th>Adet</th>
                            <th>Birim Fiyat</th>
                            <th>Toplam Fiyat</th>
                            <th>Sil</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rpSepet" runat="server">
                                      <ItemTemplate>
                        <tr>
                            <td class="td-item">
									<div class="img">
                                        <a href="UrunDetay.aspx?UrunID=<%#Eval("UrunID") %>">
                                            <img src="UrunImages/<%#Eval("Image") %>">
                                        </a>
									</div>
									
                                  
  
									<div class="info">
                                        <a href="UrunDetay.aspx?UrunID=<%#Eval("UrunID") %>"><%#Eval("MarkaAdi") %></a>
                                        <a href="UrunDetay.aspx?UrunID=<%#Eval("UrunID") %>"><%#Eval("UrunAdi") %></a>
                                        <asp:Label ID="lblSepetId" runat="server" Text='<%#Eval("Id") %>' Visible="false"></asp:Label>
									</div>
								</td>
							
                            <td class="td-qty text-center">
                                <div class="qty">
                                    <asp:TextBox ID="txtAdet" runat="server"  CssClass="input-text" Text='<%#Eval("Adet") %>'></asp:TextBox>
                                </div>
                            </td>
                            <td class="td-sub text-center">
                                <p><%#Eval("UrunFiyat")+" TL" %></p>
								</td>
                            <td class="td-sub text-center">
                                <p><%# Eval("ToplamFiyat")+" TL" %></p>
								</td>
                            <td class="td-remove text-center">
                                <asp:ImageButton ID="ImageButton1" OnClick="ImageButton1_Click" CommandArgument='<%#Eval("Id")%>' runat="server"  ImageUrl="images/icon-delete.png"/>
                                
                            </td>

                        </tr>
                        </ItemTemplate>
                </asp:Repeater>
				
                </table>
            </div>


           

            
            <div class="shop-button clearfix">
                <asp:LinkButton ID="LinkButton1"  class="btn btn-13 pull-left" runat="server" OnClick="LinkButton1_Click">Sepeti Güncelle</asp:LinkButton>
                <a href="siparis.aspx" class="btn btn-13 pull-right">Siparişi Tamamla</a>
            </div>
            

            
            <div class="cart-collaterals">
                <div class="row">
                    <div class="col-sm-6 col-md-4">
                        <h2>Hediye Kartınız Var Mı?</h2>
                        <input type="text" class="input-text" placeholder="Hediye kodunu giriniz...">
                        <button class="btn btn-13">KULLAN</button>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <h2>Kuponunuz Var Mı?</h2>
                        <input type="text" class="input-text" placeholder="Kupon kodunu giriniz...">
                        <button class="btn btn-13">KULLAN</button>
                    </div>
                    
                </div>
            </div>
            

        </div>
    </section>
   


    </section>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
