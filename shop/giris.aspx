<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="shop.giris" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">


    
    <section class="breakcrumb bg-grey">
        <div class="container">
            <ul class="nav-breakcrumb  pull-right">
                <li><a href="Default.aspx">Anasayfa</a></li>
                <li><span>Giriş</span></li>
            </ul>

        </div>
    </section>
    

    
    <section class="login-register">
        <div class="container">
            <div class="row">

               
                <div class="col-md-6">

                    <div class="heading _two text-left">
                        <h2>Giriş Yap</h2>
                    </div>

                    <div class="form login ">

                        <asp:Label ID="lblError" runat="server" Text=""></asp:Label>

                        <br />

                        <label>E-mail  <sup>*</sup></label>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Lütfen Boş Geçmeyiniz!" Text="Lütfen Boş Geçmeyiniz!" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>--%>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="input-text"> </asp:TextBox>
                        
                        <label>Şifre <sup>*</sup></label>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Lütfen Boş Geçmeyiniz!" Text="Lütfen Boş Geçmeyiniz!" ControlToValidate="txtSifre"></asp:RequiredFieldValidator>--%>
                        <asp:TextBox ID="txtSifre" runat="server" TextMode="Password" CssClass="input-text" ></asp:TextBox>
                        
                        <%--<div class="check-box">
                            <input type="checkbox" class="checkbox" id="remenber">
                            <label for="remenber">Beni Hatırla</label>
                        </div>--%>

                        <p>
                            <%--<a href="#">Şifrenizi mi unuttunuz?</a>--%>
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </p>

                        <asp:Button CssClass="btn btn-13 btn-submit text-uppercase" ID="btnGiris" runat="server" Text="Giriş Yap" OnClick="btnGiris_Click" />

                        <div class="btn-group">

                        </div>
                    </div>

                </div>
               

                
                <div class="col-md-6">

                    <div class="heading _two text-left">
                        <h2>Yeni Hesap Oluştur</h2>
                    </div>

                    <div class="form login ">

                        <label>E-mail <sup>*</sup></label>
                       <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Lütfen Boş Geçmeyiniz!" Text="Lütfen Boş Geçmeyiniz!" ControlToValidate="txtEmail2"></asp:RequiredFieldValidator>--%>
                        <asp:TextBox ID="txtEmail2" runat="server" class="input-text"></asp:TextBox>
                        

                        <label>Şifre<sup>*</sup></label>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Lütfen Boş Geçmeyiniz!" Text="Lütfen Boş Geçmeyiniz!" ControlToValidate="txtSifre2"></asp:RequiredFieldValidator>--%>
                        <asp:TextBox ID="txtSifre2" runat="server" TextMode="Password" class="input-text"></asp:TextBox>

                        <label>Şifreyi Tekrar Girin...<sup>*</sup></label>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Girilen Şifreler Aynı Değil!" ControlToCompare="txtSifre2" ControlToValidate="txtSifre2Tekrar"></asp:CompareValidator>
                        <asp:TextBox ID="txtSifre2Tekrar" runat="server" TextMode="Password" class="input-text"></asp:TextBox>

                        <asp:Label ID="lblHata" runat="server" Text=""></asp:Label>

                        <asp:Button ID="btnKayıtOl" runat="server" class="btn btn-13 btn-submit text-uppercase" Text="Kayıt Ol" OnClick="btnKayıtOl_Click" />
                        
                    </div>

                </div>

             

            </div>
        </div>
    </section>
    

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
