<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="siparis.aspx.cs" Inherits="shop.siparis" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    
    <table >
        <tr>
            <td>
        <label>Ad<sup>*</sup></label></td><td>
        <asp:TextBox ID="txtAd" runat="server" class="input-text"></asp:TextBox></td></tr>
        <tr><td>
        <label>Soyad <sup>*</sup></label></td><td>
        <asp:TextBox ID="txtSoyad" runat="server" class="input-text"></asp:TextBox></td></tr>
        <tr><td>
        <label>Tel <sup>*</sup></label></td><td>
        <asp:TextBox ID="txtTel" runat="server" class="input-text"></asp:TextBox></td></tr>
        <tr><td>
        <label>Adres <sup>*</sup></label></td><td>
            <textarea id="TextArea1" cols="20" rows="2"></textarea>
        </td></tr>
        <tr><td>
        <asp:Button ID="btnSiparisVer"  runat="server" Text="Sipariş Ver" OnClick="btnSiparisVer_Click" />
            </td></tr>
    </table>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
