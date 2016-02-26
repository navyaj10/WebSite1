<%@ Page Language="C#" MasterPageFile="~/Asset.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 100%;
        }
        .style6
        {
            height: 74px;
        }
        .style8
        {
            height: 115px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder4">
    <table class="style5">
        <tr>
            <td align="center" class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6" align="center">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                    Text="Welcome to Asset management"></asp:Label>
            </td>
        </tr>
    </table>


</asp:Content>



