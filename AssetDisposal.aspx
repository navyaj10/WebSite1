<%@ Page Language="C#" MasterPageFile="~/Asset.master" AutoEventWireup="true" CodeFile="AssetDisposal.aspx.cs" Inherits="AssetDisposal" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 445px;
        }
        .style9
        {
            width: 445px;
            height: 36px;
        }
        .style11
        {
            height: 36px;
        }
        .style12
        {
            width: 445px;
            height: 35px;
        }
        .style14
        {
            height: 35px;
        }
        .style18
        {
            width: 445px;
            height: 39px;
        }
        .style20
        {
            height: 39px;
        }
        .style21
        {
            width: 445px;
            height: 34px;
        }
        .style22
        {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder4">

                                    <table class="style1">
                                        <tr>
                                            <td align="center" colspan="3" class="style22">
                                                <b>Asset Disposal</b></td>
                                            
                                        </tr>
                                        <tr>
                                            <td align="right" class="style9">
                                                <asp:Label ID="Label1" runat="server" Text="Date"></asp:Label>
                                            </td>
                                            <td class="style11">
                                                :</td>
                                            <td class="style11">
                                                <asp:TextBox ID="txtdate" runat="server" Width="151px"></asp:TextBox>
                                            &nbsp;<asp:ImageButton ID="imgbtnCalendar" 
                    runat="server" Height="20px" ImageUrl="~/Images/events12.png" 
                    onclick="imgbtnCalendar_Click" Width="17px" />
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                    BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                    Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                    onselectionchanged="Calendar1_SelectionChanged" Visible="False" Width="200px">
                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <WeekendDayStyle BackColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                </asp:Calendar>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                    ControlToValidate="txtdate" ErrorMessage="*" ValidationGroup="11"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="style12">
                                                <asp:Label ID="Label2" runat="server" Text="Asset Category"></asp:Label>
                                            </td>
                                            <td class="style14">
                                                :</td>
                                            <td class="style14">
                                                <asp:DropDownList ID="dplCategory" runat="server" AutoPostBack="True" 
                                                    Height="39px" Width="153px" 
                                                    onselectedindexchanged="dplCategory_SelectedIndexChanged">
                                                    <asp:ListItem Value="0">--Select One--</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                    ControlToValidate="dplCategory" ErrorMessage="*" InitialValue="0" 
                                                    ValidationGroup="11"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                          <td align="right" class="style18">
                                                <asp:Label ID="Label3" runat="server" Text="Asset Type"></asp:Label>
                                            </td>
                                            <td class="style20">
                                                :</td>
                                            <td class="style20">
                                                <asp:DropDownList ID="dplAssettype" runat="server" AutoPostBack="True" 
                                                    Width="153px" Height="48px" 
                                                    onselectedindexchanged="dplAssettype_SelectedIndexChanged">
                                                    <asp:ListItem Value="0">--Select One--</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                    ControlToValidate="dplAssettype" ErrorMessage="*" ValidationGroup="11"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                         <td align="right" class="style12">
                                                <asp:Label ID="Label4" runat="server" Text="Asset ID/Serial No"></asp:Label>
                                            </td>
                                            <td class="style14">
                                                :</td>
                                            <td class="style14">
                                                <asp:DropDownList ID="dplAssetid" runat="server" AutoPostBack="True" 
                                                    Width="152px">
                                                    <asp:ListItem Value="0">--Select One--</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                    ControlToValidate="dplAssetid" ErrorMessage="*" ValidationGroup="11"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="style21">
                                                <asp:Label ID="Label5" runat="server" Text="Party"></asp:Label>
                                            </td>
                                            <td class="style22">
                                                :</td>
                                            <td class="style22">
                                                <asp:TextBox ID="txtParty" runat="server" Width="150px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                    ControlToValidate="txtParty" ErrorMessage="*" ValidationGroup="11"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="style4">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <asp:Button ID="save" runat="server" Text="Save" Width="106px" 
                                                    onclick="save_Click" ValidationGroup="11" />
                                                &nbsp;
                                                <asp:Button ID="cancel" runat="server" Text="Cancel" Width="106px" 
                                                    onclick="cancel_Click" />
                                                </td>
                                        </tr>
    </table>

</asp:Content>


