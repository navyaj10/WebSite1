<%@ Page Language="C#" MasterPageFile="~/Asset.master" AutoEventWireup="true" CodeFile="AmcScreen.aspx.cs" Inherits="AmcScreen" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 92%;
            margin-bottom: 96px;
        }
        .style4
        {
            height: 248px;
        }
        .style5
        {
            height: 40px;
        }
        .style6
        {
            height: 178px;
        }
        .style7
        {
            height: 40px;
            width: 2px;
        }
        .style8
        {
            height: 40px;
            width: 397px;
        }
        .style9
        {
        height: 50px;
    }
        .style11
        {
        height: 52px;
    }
        .style13
    {
        height: 74px;
    }
    .style14
    {
        height: 56px;
    }
    .style15
    {
        height: 41px;
    }
    .style16
    {
        height: 42px;
    }
        .style17
        {
            height: 734px;
        }
        .style18
        {
            height: 74px;
            width: 300px;
        }
        .style19
        {
            height: 56px;
            width: 300px;
        }
        .style20
        {
            height: 50px;
            width: 300px;
        }
        .style21
        {
            height: 52px;
            width: 300px;
        }
        .style22
        {
            height: 41px;
            width: 300px;
        }
        .style23
        {
            height: 42px;
            width: 300px;
        }
        .style24
        {
            width: 300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder4">

                                    <table align="center" class="style3">
                                        <tr>
                                            <td align="center" colspan="3">
                                                Annual Maintenance Contract</td>
                                            
                                        </tr>
                                        <tr>
                                            <td class="style8" align="right">
                                                <asp:Label ID="Label1" runat="server" Text="Vendor"></asp:Label>
                                            </td>
                                            <td class="style7">
                                                :</td>
                                            <td class="style5">
                                                <asp:DropDownList ID="dplVendor" runat="server" Height="28px" Width="170px" 
                                                    onselectedindexchanged="dplVendor_SelectedIndexChanged" 
                                                    AutoPostBack="True">
                                                    <asp:ListItem Value="0">--Select One--</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="3" class="style6">
                                                <asp:GridView ID="gvAmc" runat="server" BackColor="LightGoldenrodYellow" 
                                                    BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" 
                                                    GridLines="None" onselectedindexchanged="gvAmc_SelectedIndexChanged" 
                                                    Width="734px">
                                                    <FooterStyle BackColor="Tan" />
                                                    <Columns>
                                                        <asp:ButtonField CommandName="Select" HeaderText="Edit" ShowHeader="True" 
                                                            Text="Edit" />
                                                    </Columns>
                                                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                                        HorizontalAlign="Center" />
                                                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                                </asp:GridView>
                                                </td>
                                            
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="3">
                                                <asp:Button ID="btnAdd" runat="server" Text="New" Width="64px" 
                                                    onclick="btnAdd_Click" />
                                            </td>
                                            
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="3" class="style17" >
                                                <asp:Panel ID="Panel1" runat="server" 
                                                    Width="588px" BackColor="#CCFFCC" Visible="False" Height="691px">
                                                    <table>
                                                        <tr>
                                                            <td align="right" class="style13">
                                                                <asp:Label ID="Label7" runat="server" Text="Vendor"></asp:Label>
                                                            </td>
                                                            <td class="style13">
                                                                :</td>
                                                            <td align="left" class="style18">
                                                                <asp:DropDownList ID="dplVendorName" runat="server" Height="40px" Width="170px">
                                                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right" class="style14">
                                                                <asp:Label ID="Label2" runat="server" Text="Asset Category"></asp:Label>
                                                            </td>
                                                            <td class="style14">
                                                                :</td>
                                                            <td align="left" class="style19">
                                                                <asp:DropDownList ID="dplCategory" runat="server" Height="34px" Width="170px" 
                                                                    AutoPostBack="True" 
                                                                    onselectedindexchanged="dplCategory_SelectedIndexChanged" 
                                                                    ValidationGroup="1">
                                                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right" class="style9">
                                                                <asp:Label ID="Label3" runat="server" Text="Asset Type"></asp:Label>
                                                            </td>
                                                            <td class="style9">
                                                                :</td>
                                                            <td align="left" class="style20">
                                                                <asp:DropDownList ID="dplAssetType" runat="server" Height="22px" Width="170px" 
                                                                    AutoPostBack="True" 
                                                                    onselectedindexchanged="dplAssetType_SelectedIndexChanged">
                                                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right" class="style11">
                                                                Asset Id</td>
                                                            <td class="style11">
                                                                :</td>
                                                            <td align="left" class="style21">
                                                                <asp:DropDownList ID="dplAssetId" runat="server" Height="21px" Width="170px">
                                                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right" class="style15">
                                                                <asp:Label ID="Label5" runat="server" Text="AMC Start Date"></asp:Label>
                                                            </td>
                                                            <td class="style15">
                                                                :</td>
                                                            <td align="left" class="style22">
                                                                <asp:TextBox ID="txtStartdate" runat="server" Height="27px" Width="170px"></asp:TextBox>
                                                                <asp:ImageButton ID="imgbtnCalendar" runat="server" Height="20px" 
                                                                    ImageUrl="~/Images/events12.png" onclick="imgbtnCalendar_Click" Width="17px" />
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                                    ControlToValidate="txtStartdate" ErrorMessage="*" ValidationGroup="11"></asp:RequiredFieldValidator>
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
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right" class="style16">
                                                                <asp:Label ID="Label6" runat="server" Text="AMC End Date"></asp:Label>
                                                            </td>
                                                            <td class="style16">
                                                                :</td>
                                                            <td align="left" class="style23">
                                                                <asp:TextBox ID="txtEnddate" runat="server" Height="24px" Width="171px" 
                                                                    ValidationGroup="1"></asp:TextBox>
                                                                <asp:ImageButton ID="imgbtnCalendar1" runat="server" Height="20px" 
                                                                    ImageUrl="~/Images/events12.png"  
                                                                    Width="17px" onclick="imgbtnCalendar1_Click" />
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                                    ControlToValidate="txtEnddate" ErrorMessage="*" ValidationGroup="11"></asp:RequiredFieldValidator>
                                                                <asp:Label ID="Errormsg" runat="server" 
                                                                    Text="End date should be greater than start date" Visible="False"></asp:Label>
                                                                <br />
                                                                <asp:Calendar ID="Calendar2" runat="server" BackColor="White" 
                                                                    BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                                                                    Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                                                                     Visible="False" Width="200px" 
                                                                    onselectionchanged="Calendar2_SelectionChanged">
                                                                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                                                    <SelectorStyle BackColor="#CCCCCC" />
                                                                    <WeekendDayStyle BackColor="#FFFFCC" />
                                                                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                                                    <OtherMonthDayStyle ForeColor="#808080" />
                                                                    <NextPrevStyle VerticalAlign="Bottom" />
                                                                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                                                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                                                </asp:Calendar>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style24">
                                                                <asp:Button ID="btnUpdate" runat="server"  Text="Update" 
                                                                    Width="66px" Visible="False" onclick="btnUpdate_Click" 
                                                                    ValidationGroup="11" />
                                                                <asp:Button ID="btnSave" runat="server" onclick="btnSave_Click" Text="Save" 
                                                                    Width="66px" Visible="False" ValidationGroup="11" />
                                                                <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="66px" 
                                                                    onclick="btnCancel_Click" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
                                            
                                        </tr>
                                        </table>

</asp:Content>






