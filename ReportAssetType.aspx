<%@ Page Language="C#" MasterPageFile="~/Asset.master" AutoEventWireup="true" CodeFile="ReportAssetType.aspx.cs" Inherits="ReportAssetType" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            height: 38px;
        }
    .style7
    {
        height: 38px;
        width: 151px;
    }
    .style8
    {
        width: 151px;
    }
    .style9
    {
        width: 100%;
    }
    .style10
    {
        height: 37px;
    }
    .style11
    {
        height: 42px;
    }
    .style12
    {
        width: 139px;
    }
    .style13
    {
        height: 42px;
        width: 139px;
    }
    .style14
    {
        height: 2px;
        width: 139px;
    }
    .style15
    {
        height: 2px;
    }
    .style16
    {
        width: 137px;
    }
    .style17
    {
        height: 42px;
        width: 137px;
    }
    .style18
    {
        height: 37px;
        width: 137px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder4">
    <table  style="height: 57px; width: 921px" >
        <tr>
            <td class="style7" >
                &nbsp;</td>
            <td class="style6" >
            </td>
            <td class="style6">
                &nbsp;&nbsp;&nbsp;
                <asp:Panel ID="Panel1" runat="server" BackColor="#99CCFF" Height="158px" 
                    Width="432px" Visible="False">
                    <table class="style9">
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                Asset Type</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                Asset Category :</td>
                            <td class="style11">
                                <asp:DropDownList ID="ddlcategory" runat="server" AutoPostBack="True" 
                                    Height="22px" onselectedindexchanged="ddlcategory_SelectedIndexChanged" 
                                    Width="201px">
                                    <asp:ListItem Value="0">--Select One--</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="ddlcategory" ErrorMessage="*" InitialValue="0"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10">
                                Asset Type :</td>
                            <td class="style10">
                                <asp:DropDownList ID="ddlAsset" runat="server" Height="22px" Width="203px">
                                    <asp:ListItem Value="0">--Select One--</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="ddlAsset" ErrorMessage="*" InitialValue="0"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="btnPreview" runat="server" 
                                    Text="Preview" onclick="btnPreview_Click1" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel2" runat="server" BackColor="#99CCFF" Height="158px" 
                    Width="432px" Visible="False">
                    <table class="style9">
                        <tr>
                            <td class="style12">
                                &nbsp;</td>
                            <td>
                                Individual Asset</td>
                        </tr>
                        <tr>
                            <td class="style13">
                                Asset ID:</td>
                            <td class="style11">
                                <asp:DropDownList ID="dplAssetId" runat="server" AutoPostBack="True" 
                                    Height="22px" onselectedindexchanged="ddlcategory_SelectedIndexChanged" 
                                    Width="201px">
                                    <asp:ListItem Value="0">--Select One--</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="ddlcategory" ErrorMessage="*" InitialValue="0"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                            </td>
                            <td class="style15">
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="btnPreview0" runat="server"  
                                    Text="Preview" onclick="btnPreview0_Click1" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel3" runat="server" BackColor="#99CCFF" Height="158px" 
                    Width="432px" Visible="False">
                    <table class="style9">
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                Asset Category</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                Asset Category :</td>
                            <td class="style11">
                                <asp:DropDownList ID="dplCategory" runat="server" AutoPostBack="True" 
                                    Height="22px" onselectedindexchanged="ddlcategory_SelectedIndexChanged" 
                                    Width="201px">
                                    <asp:ListItem Value="0">--Select One--</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="ddlcategory" ErrorMessage="*" InitialValue="0"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="btnPreview3" runat="server"  
                                    Text="Preview" onclick="btnPreview3_Click" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel4" runat="server" BackColor="#99CCFF" Height="158px" 
                    Width="432px" Visible="False">
                    <table class="style9">
                        <tr>
                            <td class="style16">
                                &nbsp;</td>
                            <td>
                                Asset Disposal</td>
                        </tr>
                        <tr>
                            <td class="style17">
                                Asset ID :</td>
                            <td class="style11">
                                <asp:DropDownList ID="dplAssetiid" runat="server" AutoPostBack="True" 
                                    Height="22px" onselectedindexchanged="ddlcategory_SelectedIndexChanged" 
                                    Width="201px">
                                    <asp:ListItem Value="0">--Select One--</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                    ControlToValidate="ddlcategory" ErrorMessage="*" InitialValue="0"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style18">
                                &nbsp;</td>
                            <td class="style10">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style16">
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="btnPreviewid" runat="server"  
                                    Text="Preview" onclick="btnPreviewid_Click"/>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td >
                &nbsp;</td>
            <td>
                <br />
            </td>
        </tr>
    </table>


</asp:Content>


