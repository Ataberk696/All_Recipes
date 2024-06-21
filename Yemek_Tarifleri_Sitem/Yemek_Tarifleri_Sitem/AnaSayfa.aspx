<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            font-size: x-large;
            color: #CC0066;
        }
        .auto-style8 {
            background-color: #FFFF99;
            color: #FFCCFF;
        }
        .auto-style9 {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="448px">
        <ItemTemplate>
            <table class="auto-style4">
                <tr>
                    <td class="auto-style8"><strong>


                    <a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid") %>">    <asp:Label ID="Label3" runat="server" CssClass="auto-style6" Text='<%# Eval("YemekAd") %>'></asp:Label></a>
                        </strong>


                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;<strong>Malzemeler:</strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Yemek Tarifi:</strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Eklenme Tarihi:&nbsp;</strong><asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>' CssClass="auto-style9"></asp:Label>
                        &nbsp;-&nbsp;<strong><em>Puan:</em></strong> <strong>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>' CssClass="auto-style9"></asp:Label>
                        </strong>&nbsp;</td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #333333"></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
