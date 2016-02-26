<%@ Page Language="C#" MasterPageFile="~/Asset.master" AutoEventWireup="true" CodeFile="ServiceRequest.aspx.cs" Inherits="ServiceRequest" Title="Untitled Page" %>

<script runat="server">

  
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        height: 425px;
    }
        .style4
        {
            height: 60px;
        }
        .style5
        {
            height: 37px;
        }
        .style8
        {
            width: 204px;
        }
        .style10
        {
            width: 204px;
            height: 35px;
        }
        .style11
        {
            height: 35px;
        }
        .style19
        {
            height: 37px;
            width: 379px;
        }
        .style20
        {
            height: 392px;
        }
        .style21
        {
            height: 53px;
        }
        .style22
        {
            width: 204px;
            height: 50px;
        }
        .style23
        {
            height: 50px;
        }
        .style24
        {
            width: 204px;
            height: 42px;
        }
        .style25
        {
            height: 42px;
        }
        .style26
        {
            width: 204px;
            height: 30px;
        }
        .style27
        {
            height: 30px;
        }
    .style28
    {
        width: 204px;
        height: 54px;
    }
    .style29
    {
            height: 54px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder4">
    <table align="center" class="style3">
        <tr>
            <td class="style19" align="right">
                <asp:Label ID="Label3" runat="server" Text="Service Center"></asp:Label>
            </td>
            <td class="style5">
                :</td>
            <td class="style5">
                <asp:DropDownList ID="dplServiceCenter" runat="server" Height="20px" 
                    Width="185px" AutoPostBack="True" 
                    onselectedindexchanged="dplServiceCenter_SelectedIndexChanged">
                    <asp:ListItem>--Select One--</asp:ListItem>
                    <asp:ListItem Value="All"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style4" align="center" colspan="3">
            
                <asp:GridView ID="gvRequest" runat="server" 
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                    CellPadding="2" ForeColor="Black" GridLines="None" Height="54px" 
                    Width="755px" AllowPaging="True" 
                    onselectedindexchanged="gvRequest_SelectedIndexChanged">
                    <FooterStyle BackColor="Tan" />
                    <Columns>
                        <asp:ButtonField CommandName="Select" Text="Edit" />
                    </Columns>
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#6666FF" ForeColor="GhostWhite" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                </asp:GridView>
            
               </td>
            
           
        </tr>
        <tr>
            <td align="center" colspan="3" class="style21">
                <asp:Button ID="btnNew" runat="server" Text="New" Width="75px" onclick="btnNew_Click" 
                     />
                    
                &nbsp;
                    
                &nbsp;
                <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="75px" 
                    onclick="btnDelete_Click" 
                    onclientclick="&lt;script type=&quot;javascript&quot;&gt;Confirm(&quot;Are you sure to want to delete?&quot;,&quot;Confirm&quot;,YesNo)&lt;/script&gt;" 
                    style="height: 26px" />
            </td>
            
        </tr>
        <tr>
            <td align="center" colspan="3" class="style20">
                <asp:Panel ID="Panel1" runat="server" Height="576px" Width="563px" 
                    BackColor="#FFFFCC" Visible="False">
                    <table class="style3">
                        <tr>
                            <td class="style10">
                                <asp:Label ID="Label1" runat="server" Text="Request No"></asp:Label>
                            </td>
                            <td class="style11">
                                :</td>
                            <td align="left" class="style11"> 
                                <asp:TextBox ID="txtRequestno" runat="server" Width="157px" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtRequestno" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10">
                                <asp:Label ID="Label2" runat="server" Text="Date"></asp:Label>
                            </td>
                            <td class="style11">
                                :</td>
                            <td align="left" class="style11">
                                <asp:TextBox ID="txtDate" runat="server" Width="154px"></asp:TextBox>
                                <asp:ImageButton ID="imgbtnCalendar" runat="server" Height="20px" 
                                    ImageUrl="~/Images/events12.png" onclick="imgbtnCalendar_Click" Width="17px" />
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
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtDate" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10">
                                <asp:Label ID="Label11" runat="server" Text="Vendor Name"></asp:Label>
                            </td>
                            <td class="style11">
                                :</td>
                            <td align="left" class="style11">
                                <asp:DropDownList ID="dplVendor" runat="server" Height="28px" Width="153px" 
                                    onselectedindexchanged="dplVendor_SelectedIndexChanged">
                                    <asp:ListItem Value="0">--Select One--</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style24">
                                <asp:Label ID="Label6" runat="server" Text="Asset Category"></asp:Label>
                            </td>
                            <td class="style25">
                                :</td>
                            <td align="left" class="style25">
                                <asp:DropDownList ID="dplCategory" runat="server" Height="28px" Width="153px" 
                                    AutoPostBack="True" onselectedindexchanged="dplCategory_SelectedIndexChanged" 
                                    >
                                    <asp:ListItem Value="0">--Select One--</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label7" runat="server" Text="Asset Type"></asp:Label>
                            </td>
                            <td class="style23">
                                :</td>
                            <td align="left" class="style23">
                                
                                <asp:DropDownList ID="dplTypes" runat="server" Height="29px" Width="155px" 
                                    AutoPostBack="True" onselectedindexchanged="dplTypes_SelectedIndexChanged">
                                    <asp:ListItem Value="0">--SelectOne--</asp:ListItem>
                                </asp:DropDownList>
                                
                            </td>
                        </tr>
                        <tr>
                            <td class="style28">
                                <asp:Label ID="Label8" runat="server" Text="Assetid"></asp:Label>
                            </td>
                            <td class="style29">
                                :</td>
                            <td align="left" class="style29">
                                <asp:DropDownList ID="dplAssetID" runat="server" CausesValidation="True" 
                                    Height="29px" Width="155px">
                                    <asp:ListItem Value="0">--SelectOne--</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <asp:Label ID="Label9" runat="server" Text="Description"></asp:Label>
                            </td>
                            <td class="style23">
                                :</td>
                            <td align="left" class="style23">
                                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" 
                                    Width="154px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtDescription" ErrorMessage="*" ValidationGroup="11"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style26">
                                <asp:Label ID="Label10" runat="server" Text="Service Required"></asp:Label>
                            </td>
                            <td class="style27">
                                :</td>
                            <td align="left" class="style27">
                                <asp:TextBox ID="txtServiceRequired" runat="server" TextMode="MultiLine" 
                                    Width="152px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="txtServiceRequired" ErrorMessage="*" ValidationGroup="11"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td align="left">
                                <asp:Button ID="btnUpdate" runat="server" Text="Update" 
                                    Width="75px" onclick="btnUpdate_Click" style="height: 26px" 
                                    ValidationGroup="11" />
                                <asp:Button ID="btnSave" runat="server" onclick="btnSave_Click" Text="Save" 
                                    Width="75px" ValidationGroup="11" />
                                <asp:Button ID="btnCancel" runat="server"  Text="Cancel" 
                                    Width="75px" onclick="btnCancel_Click1" />
                            </td>
                        </tr>
                        
                    </table>
                </asp:Panel>
            </td>
            
        </tr>
        </table>

</asp:Content>


