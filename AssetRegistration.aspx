<%@ Page Language="C#" MasterPageFile="~/Asset.master" AutoEventWireup="true" CodeFile="AssetRegistration.aspx.cs" Inherits="Default3" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
    .style6
    {
        height: 49px;
    }
        .style7
        {
            width: 354px;
            height: 37px;
        }
        .style8
        {
            width: 21px;
            height: 37px;
        }
        .style9
        {
            height: 37px;
        }
        .style10
        {
            width: 354px;
            height: 32px;
        }
        .style11
        {
            width: 21px;
            height: 32px;
        }
        .style12
        {
            height: 32px;
        }
        .style13
        {
            width: 354px;
            height: 48px;
        }
        .style14
        {
            width: 21px;
            height: 48px;
        }
        .style15
        {
            height: 48px;
        }
        .style16
        {
            width: 354px;
            height: 34px;
        }
        .style17
        {
            width: 21px;
            height: 34px;
        }
        .style18
        {
            height: 34px;
            margin-left: 80px;
        }
        .style19
        {
            width: 354px;
            height: 35px;
        }
        .style20
        {
            width: 21px;
            height: 35px;
        }
        .style21
        {
            height: 35px;
        }
        .style22
        {
            width: 354px;
            height: 33px;
        }
        .style23
        {
            width: 21px;
            height: 33px;
        }
        .style24
        {
            height: 33px;
        }
        .style28
        {
            width: 354px;
            height: 44px;
        }
        .style29
        {
            width: 21px;
            height: 44px;
        }
        .style30
        {
            height: 44px;
        }
        .style31
        {
            width: 354px;
            height: 46px;
        }
        .style32
        {
            width: 21px;
            height: 46px;
        }
        .style33
        {
            height: 46px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder4">
    <table align="center" class="style3">
        <tr>
            <td colspan="3" align="center" class="style6">
                <b>Asset Registration</b>
            </td>
            
        </tr>
        <tr>
            <td align="right" class="style7">
                <asp:Label ID="Label2" runat="server" Text="Category"></asp:Label>
            </td>
            <td class="style8">
                :</td>
            <td class="style9">
                <asp:DropDownList ID="dplCategory" runat="server" AutoPostBack="True" 
                    Width="170px" onselectedindexchanged="dplCategory_SelectedIndexChanged" 
                    ToolTip="Select One Category from list">
                    <asp:ListItem Value="0">-- Select One --</asp:ListItem>
                </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="dplCategory" ErrorMessage="*" ValidationGroup="11"></asp:RequiredFieldValidator>
                                                    </td>
        </tr>
        <tr>
            <td align="right" class="style10">
                <asp:Label ID="Label1" runat="server" Text="Asset Id"></asp:Label>
            </td>
            <td class="style11">
                :</td>
            <td class="style12">
                <asp:TextBox ID="txtAssetid" runat="server" ReadOnly="True" Width="170px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtAssetid" ErrorMessage="*" ValidationGroup="11"></asp:RequiredFieldValidator>
                                                    </td>
        </tr>
        <tr>
            <td align="right" class="style10">
                <asp:Label ID="Label3" runat="server" Text="Asset Type"></asp:Label>
            </td>
            <td class="style11">
                :</td>
            <td class="style12">
                <asp:DropDownList ID="dplAssettype" runat="server" AutoPostBack="True" 
                    Width="170px" onselectedindexchanged="dplAssettype_SelectedIndexChanged">
                    <asp:ListItem Value="0">-- Select One --</asp:ListItem>
                </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="dplAssettype" ErrorMessage="*" ValidationGroup="11"></asp:RequiredFieldValidator>
                                                    </td>
        </tr>
        <tr>
            <td align="right" class="style13">
                <asp:Label ID="Label4" runat="server" Text="Configuration"></asp:Label>
            </td>
            <td class="style14">
                :</td>
            <td class="style15">
                <asp:TextBox ID="txtConfiguration" runat="server" TextMode="MultiLine" 
                    Width="170px" ReadOnly="True"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtConfiguration" ErrorMessage="*" ValidationGroup="11"></asp:RequiredFieldValidator>
                                                    </td>
        </tr>
        <tr>
           <td align="right" class="style16">
                <asp:Label ID="Label5" runat="server" Text="Vendor"></asp:Label>
            </td>
            <td class="style17">
                :</td>
            <td class="style18">
                <asp:DropDownList ID="dplVendor" runat="server" AutoPostBack="True" 
                    Width="170px">
                    <asp:ListItem Value="0">--Select One--</asp:ListItem>
                </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="dplVendor" ErrorMessage="*" ValidationGroup="11"></asp:RequiredFieldValidator>
                                                    </td>
        </tr>
        <tr>
            <td align="right" class="style19">
                <asp:Label ID="Label6" runat="server" Text="PO Referance No"></asp:Label>
            </td>
            <td class="style20">
                :</td>
            <td class="style21">
                <asp:TextBox ID="txtPoreferance" runat="server" Width="170px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtPoreferance" ErrorMessage="*" ValidationGroup="11"></asp:RequiredFieldValidator>
                                                    </td>
        </tr>
        <tr>
            <td align="right" class="style10">
                <asp:Label ID="Label7" runat="server" Text="Serial No"></asp:Label>
            </td>
            <td class="style11">
                :</td>
            <td class="style12">
                <asp:TextBox ID="txtSerialno" runat="server" Width="170px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="txtSerialno" ErrorMessage="*" ValidationGroup="11"></asp:RequiredFieldValidator>
                                                    </td>
        </tr>
        <tr>
            <td align="right" class="style22">
                <asp:Label ID="Label9" runat="server" Text="Date of Install"></asp:Label>
            </td>
            <td class="style23">
                :</td>
            <td class="style24">
                <asp:TextBox ID="txtDateofInstall" runat="server" ReadOnly="True" Width="170px"></asp:TextBox>
                                                    <asp:ImageButton ID="imgbtnCalendar1" 
                    runat="server" Height="16px" ImageUrl="~/Images/events12.png" 
                    onclick="imgbtnCalendar_Click" Width="17px" />
                                                    
                <br />
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
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtDateofInstall" ErrorMessage="*" ValidationGroup="11"></asp:RequiredFieldValidator>
                                                    </td>
        </tr>
        <tr>
            <td align="right" class="style19">
                <asp:Label ID="Label8" runat="server" Text="Warranty Period"></asp:Label>
            </td>
            <td class="style20">
                :</td>
            <td class="style21">
                                                    &nbsp;<asp:TextBox ID="txtWarranty" runat="server" Width="170px" 
                                                        ontextchanged="txtWarranty_TextChanged" ReadOnly="True"></asp:TextBox>
                                                    
                <asp:ImageButton ID="imgbtnCalendar2" 
                    runat="server" Height="20px" ImageUrl="~/Images/events12.png" 
                    onclick="imgbtnCalendar_Click1" Width="17px" />
                                                    
                <asp:Calendar ID="Calendar2" runat="server" BackColor="White" 
                    BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                    Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                    onselectionchanged="Calendar2_SelectionChanged" Visible="False" 
                    Width="200px">
                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <WeekendDayStyle BackColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                </asp:Calendar>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                                        ControlToValidate="txtWarranty" ErrorMessage="*" ValidationGroup="11"></asp:RequiredFieldValidator>
                                                    <asp:Label ID="Errormsg" runat="server" 
                                                        Text="Warranty Should be greater than Date of Install" Visible="False"></asp:Label>
                                                    </td>
                                                    <td>
                                                    </td>
        </tr>
        <tr>
            <td align="right" class="style28">
                <asp:Label ID="Label10" runat="server" Text="Asset Location"></asp:Label>
            </td>
            <td class="style29">
                :</td>
            <td class="style30">
                <asp:DropDownList ID="dplAssetLocation" runat="server" AutoPostBack="True" 
                    Width="170px">
                    <asp:ListItem Value="0">--Select One--</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="dplAssetLocation" ErrorMessage="*" ValidationGroup="11"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style31">
                <asp:Label ID="Label11" runat="server" Text="Department"></asp:Label>
            </td>
            <td class="style32">
                :</td>
            <td class="style33">
                <asp:DropDownList ID="dpldept" runat="server" Height="36px" Width="171px">
                    <asp:ListItem>--Select One--</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="dpldept" ErrorMessage="*" ValidationGroup="11"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style28">
                </td>
            <td class="style29">
                </td>
            <td class="style30">
                <asp:Button ID="btnSave" runat="server" Text="Save" Width="88px" 
                    onclick="btnSave_Click" ValidationGroup="11"  />
                &nbsp;
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="88px" 
                    onclick="btnCancel_Click" />
            </td>
        </tr>
    </table>
    <br />
    <br />

</asp:Content>



