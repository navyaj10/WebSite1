<%@ Page Language="C#" MasterPageFile="~/Asset.master" AutoEventWireup="true" CodeFile="Masterentry.aspx.cs" Inherits="Masterentry" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       
        
       
        .style5
        {
            width: 367px;
        }
       
        
       
        .style10
        {
            width: 95px;
        }
        .style11
        {
            width: 1px;
        }
       
        
       
    .style12
    {
        height: 33px;
    }
    .style13
    {
            height: 40px;
        }
       
        
       
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder4">

                                        <table >
                                            <tr>
                                                <td align="center" class="style5" >
                                                    <asp:Panel ID="PanLocation" runat="server" BackColor="#99CCFF" Height="120px" 
                                                        Width="334px" BorderStyle="Solid" BorderWidth="2px">
                                                        <table >
                                                            <tr>
                                                                <td align="center" colspan="3">
                                                                   <b> Location</b></td>
                                                                
                                                            </tr>
                                                            <tr>
                                                                <td align="right" >
                                                                    <asp:Label ID="Label1" runat="server" Text="Location Name"></asp:Label>
                                                                </td>
                                                                <td >
                                                                    :</td>
                                                                <td >
                                                                    <asp:TextBox ID="txtLocation" runat="server" Width="179px"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                                        ControlToValidate="txtLocation" ErrorMessage="*" ValidationGroup="L"></asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td>
                                                                    <asp:Button ID="btnLocation" runat="server" Text="Add" Width="58px" 
                                                                        onclick="btnLocation_Click" ValidationGroup="L" />
                                                                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="58px" 
                                                                        onclick="btnCancel_Click" />
                                                                        
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                </td>
                                                <td align="center" >
                                                    <asp:Panel ID="PanDept" runat="server" Height="125px" Width="334px" BackColor="#99CCFF" 
                                                        style="margin-left: 0px" BorderStyle="Solid" BorderWidth="2px">
                                                        <table align="center" >
                                                            <tr>
                                                                <td align="center" colspan="3">
                                                                <b>Department</b>
                                                                    </td>
                                                                
                                                            </tr>
                                                            <tr>
                                                                <td align="right" >
                                                                    <asp:Label ID="department" runat="server" Text="Department Name"></asp:Label>
                                                                </td>
                                                                <td >
                                                                    :</td>
                                                                <td >
                                                                    <asp:TextBox ID="txtDepartment" runat="server" Width="179px"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                                        ControlToValidate="txtDepartment" ErrorMessage="*" ValidationGroup="D"></asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td>
                                                                    <asp:Button ID="btnDepartment" runat="server" Text="Add" Width="58px" 
                                                                        onclick="btnDepartment_Click" ValidationGroup="D" />
                                                                    <asp:Button ID="btndeptCancel" runat="server" Text="Cancel" Width="58px" 
                                                                        onclick="btndeptCancel_Click" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:Panel ID="PanVendor" runat="server" Height="182px" 
                                                        BackColor="#99CCFF"  BorderStyle="Solid" BorderWidth="2px" Width="329px" >
                                                    
                                                        <table align="center" >
                                                            <caption>
                                                                &nbsp;<tr>
                                                                    <td align="center" colspan="3">
                                                                        <b>Vendor</b>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td >
                                                                        <asp:Label ID="Label2" runat="server" Text="Vendor Name"></asp:Label>
                                                                    </td>
                                                                    <td align="center">
                                                                        :</td>
                                                                    <td align="left" >
                                                                        <asp:TextBox ID="txtVendorname" runat="server" Width="170px"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                                            ControlToValidate="txtVendorname" ErrorMessage="*" ValidationGroup="V"></asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="style10">
                                                                        <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                                                                    </td>
                                                                    <td class="style11">
                                                                        :</td>
                                                                    <td align="left">
                                                                        <asp:TextBox ID="txtAddress" runat="server" Height="23px" TextMode="MultiLine" 
                                                                            Width="161px"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                                            ControlToValidate="txtAddress" ErrorMessage="*" ValidationGroup="V"></asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label ID="Label4" runat="server" Text="Contact Number"></asp:Label>
                                                                    </td>
                                                                    <td >
                                                                        :</td>
                                                                    <td align="left">
                                                                        <asp:TextBox ID="txtContact" runat="server" Width="177px"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                                                            ControlToValidate="txtContact" ErrorMessage="*" ValidationGroup="V"></asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                    <td >
                                                                        &nbsp;</td>
                                                                    <td>
                                                                        <asp:Button ID="btnAddvendor" runat="server" onclick="btnAddvendor_Click" 
                                                                            Text="Add" ValidationGroup="V" Width="58px" />
                                                                        <asp:Button ID="btnVendorCancel" runat="server" onclick="btnVendorCancel_Click" 
                                                                            Text="Cancel" Width="58px" />
                                                                    </td>
                                                                </tr>
                                                            </caption>
                                                        </table>
                                                    </asp:Panel>
                                                </td>
                                                <td align="center" >
                                                <asp:Panel ID="PanCategory" runat="server" Height="175px" Width="333px" 
                                                        BackColor="#99CCFF" BorderStyle="Solid" BorderWidth="2px" >
                                                    <table >
                                                        <tr>
                                                            <td align="center" colspan="3">
                                                                <b>Category</b></td>
                                                            
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="Label5" runat="server" Text="Asset Category"></asp:Label>
                                                            </td>
                                                            <td>
                                                                :</td>
                                                            <td>
                                                                <asp:TextBox ID="txtCategory" runat="server" Width="179px" ></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                                    ControlToValidate="txtCategory" ErrorMessage="*" ValidationGroup="CC"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                    <asp:Button ID="btnAddCategory" runat="server" Text="Add" Width="58px" 
                                                                        onclick="btnAddCategory_Click" ValidationGroup="CC" />
                                                                    <asp:Button ID="btnCategoryCancel" runat="server" Text="Cancel" 
                                                                    Width="58px" onclick="btnCategoryCancel_Click" />
                                                                    </td>
                                                        </tr>
                                                    </table>
                                                    </asp:Panel>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="style5">
                                                    <asp:Panel runat="server" Height="184px" Width="328px" BackColor="#99CCFF" 
                                                        BorderStyle="Solid" BorderWidth="2px">
                                                        <table align="center">
                                                            <tr>
                                                                <td align="center" colspan="3">
                                                                <b>Category Type</b>
                                                                    </td>
                                                                
                                                            </tr>
                                                            <tr>
                                                                <td class="style13">
                                                                    <asp:Label ID="Label8" runat="server" Text="Asset Category"></asp:Label>
                                                                </td>
                                                                <td class="style13">
                                                                    :</td>
                                                                <td class="style13">
                                                                    <asp:DropDownList ID="dplAssetCategory" runat="server" Height="17px" 
                                                                        style="margin-left: 0px" Width="179px">
                                                                    </asp:DropDownList>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="Label6" runat="server" Text="Asset Type"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    :</td>
                                                                <td>
                                                                    <asp:TextBox ID="txtAssettype" runat="server" Width="179px"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                                                        ControlToValidate="txtAssettype" ErrorMessage="*" ValidationGroup="C"></asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="Label7" runat="server" Text="Asset Description"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    :</td>
                                                                <td>
                                                                    <asp:TextBox ID="txtAssetDescription" runat="server" TextMode="MultiLine" 
                                                                        Width="179px"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                                                        ControlToValidate="txtAssetDescription" ErrorMessage="*" ValidationGroup="C"></asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style12">
                                                                    </td>
                                                                <td class="style12">
                                                                    </td>
                                                                <td class="style12">
                                                                    <asp:Button ID="btnAddAssettype" runat="server" Text="Add" Width="58px" 
                                                                        onclick="btnAddAssettype_Click" ValidationGroup="C" />
                                                                    <asp:Button ID="btnassettypeCancel" runat="server" Text="Cancel" Width="58px" 
                                                                        onclick="btnassettypeCancel_Click" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                </td>
                                                <td align="center" >
                                                <asp:Panel ID="PanCategory0" runat="server" Height="179px" Width="324px" 
                                                        BackColor="#99CCFF" BorderStyle="Solid" BorderWidth="2px" >
                                                    <table >
                                                        <tr>
                                                            <td align="center" colspan="3">
                                                                Add New User</td>
                                                            
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="Label9" runat="server" Text="User Name "></asp:Label>
                                                            </td>
                                                            <td>
                                                                :</td>
                                                            <td>
                                                                <asp:TextBox ID="txtUserName" runat="server" Width="176px" ></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                                    ControlToValidate="txtUserName" ErrorMessage="*" ValidationGroup="U"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td >
                                                                <asp:Label ID="Label10" runat="server" Text="Password"></asp:Label>
                                                            </td>
                                                            <td class="style15">
                                                                :</td>
                                                            <td >
                                                                <asp:TextBox ID="txtPassord" runat="server" Width="179px" TextMode="Password"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                                                    ControlToValidate="txtPassord" ErrorMessage="*" ValidationGroup="U"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td >
                                                                <asp:Label ID="Label11" runat="server" Text="Retype Password"></asp:Label>
                                                            </td>
                                                            <td >
                                                                :</td>
                                                            <td >
                                                                <asp:TextBox ID="txtPassRetype" runat="server" Width="179px" 
                                                                    TextMode="Password"></asp:TextBox>
                                                                <br />
                                                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                                                    ControlToCompare="txtPassord" ControlToValidate="txtPassRetype" 
                                                                    ErrorMessage="Do not match passwords" ValidationGroup="U"></asp:CompareValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                    <asp:Button ID="btnAddCategory0" runat="server" Text="Add" Width="58px" 
                                                                        ValidationGroup="U" onclick="btnAddCategory0_Click1" />
                                                                    <asp:Button ID="btnCategoryCancel0" runat="server" Text="Cancel" 
                                                                    Width="58px" onclick="btnCategoryCancel_Click" />
                                                                    </td>
                                                        </tr>
                                                    </table>
                                                    </asp:Panel>
                                                </td>
                                            </tr>
                                            </table>

</asp:Content>


