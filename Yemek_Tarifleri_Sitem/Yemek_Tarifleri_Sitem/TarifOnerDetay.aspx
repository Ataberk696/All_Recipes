<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style12 {
            height: 26px;
            text-align: right;
        }
        .auto-style11 {
            height: 26px;
        }
        .auto-style13 {
            font-weight: bold;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style5">
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Tarif Ad:</strong></td>
                <td class="auto-style11">
                    <asp:TextBox ID="TxtTarifAd" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Tarif Malzemeler:</strong></td>
                <td class="auto-style11">
                    <asp:TextBox ID="TxtTarifMalzemeler" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Yapılış:</strong></td>
                <td class="auto-style11">
                    <asp:TextBox ID="TxtYapilis" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Tarif Resim:</strong></td>
                <td class="auto-style11">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Tarif Öneren:</strong></td>
                <td class="auto-style11">
                    <asp:TextBox ID="TxtTarifÖneren" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Tarif Öneren Mail:</strong></td>
                <td class="auto-style11">
                    <asp:TextBox ID="TxtTarifÖnerenMail" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Kategori:</strong></td>
                <td class="auto-style11">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style11"><strong>
                    <asp:Button ID="BtnYorumYap0" runat="server" CssClass="auto-style13"  Text="Onayla" Width="200px" OnClick="BtnYorumYap0_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
