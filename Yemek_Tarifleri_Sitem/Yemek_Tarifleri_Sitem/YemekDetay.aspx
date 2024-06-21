<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            font-size: 32pt;
            color: #CCCCCC;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            font-size: xx-small;
        }
        .auto-style8 {
            font-size: x-large;
        }
        .auto-style9 {
            height: 21px;
        }
        .auto-style10 {
            background-color: #EEA4A4;
        }
        .auto-style11 {
            height: 26px;
        }
        .auto-style12 {
            height: 26px;
            text-align: right;
        }
        .auto-style13 {
            font-weight: bold;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text="Label"></asp:Label>
&nbsp;</strong><asp:DataList ID="DataList2" runat="server" Width="449px">
        <ItemTemplate>
            <table class="auto-style5">
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style8" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9" style="border-bottom-style: inset; border-bottom-width: thin">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style7" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
               
            </table>
        </ItemTemplate>
    </asp:DataList>

    <div class="auto-style10">YORUM YAPMA PANELİ</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style5">
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Ad Soyad:</strong></td>
                <td class="auto-style11">
                    <asp:TextBox ID="TxtAdSoyad" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Mail:</strong></td>
                <td class="auto-style11">
                    <asp:TextBox ID="TxtMail" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Yorumunuz:</strong></td>
                <td class="auto-style11">
                    <asp:TextBox ID="TxtYorum" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style11"><strong>
                    <asp:Button ID="BtnYorumYap" runat="server" CssClass="auto-style13" OnClick="Button1_Click" Text="Yorum Yap" Width="200px" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
