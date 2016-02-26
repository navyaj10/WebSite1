<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
       
      
        .style2
        {
            width: 10px;
        }
        .style3
        {
            height: 169px;
        }
        .style4
        {
            width: 10px;
            height: 169px;
        }
       
    </style>
</head>
<body style="background-color:Gray">
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1" width="95%" >
            <tr>
                <td colspan="5">
                        <asp:Image ID="Image1" runat="server" Height="130px" Width="100%"
                            ImageUrl="~/Images/Assethead.jpg"  />
                    </td>
               
            </tr>
            <tr>
                <td>
                </td>
                <td class="style9">
                </td>
                <td class="style2">
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td class="style3">
                </td>
                <td class="style3">
                </td>
                <td align="center">
                                                <br />
                                                <asp:Panel ID="pnlLogin" runat="server" Height="188px" Width="308px" 
                                                    BorderColor="#660033" BorderStyle="Solid" BorderWidth="2px" 
                                                    BackColor="#FFCCCC" >
                                                    <table class="style1" style="width: 99%; height: 167px">
                                                        <tr> 
                                                            <td class="style5" colspan="2" style="background-color:Purple">
                                                                &nbsp;</td>
                                                           
                                                        </tr>
                                                        <tr>
                                                            <td class="style5">
                                                                <br />
                                                                <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
                                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                                                            <td>
                                                                <br />
                                                                <asp:TextBox ID="username" runat="server" Width="125px"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                                    ControlToValidate="username" ErrorMessage="*" ValidationGroup="2"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style5">
                                                                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                                                            <td>
                                                                <asp:TextBox ID="passwd" runat="server" TextMode="Password" Width="125px"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                                    ControlToValidate="passwd" ErrorMessage="*" ValidationGroup="2"></asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style5" colspan="2" align="center">
                                                                &nbsp;<asp:Label ID="lblNotValid" runat="server" ForeColor="Red" 
                                                                    Text="Invalid UserID or Password" Visible="False" Width="197px"></asp:Label>
                                                                </td>
                                                            
                                                        </tr>
                                                        <tr>
                                                            <td class="style5">
                                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                <asp:Button ID="btnLogin" runat="server" Text="Login" Width="90px" 
                                                                    ValidationGroup="2" onclick="btnLogin_Click"  />
                                                            </td>
                                                            <td>
                                                                <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="90px" onclick="btnCancel_Click" 
                                                                   />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
                <td class="style3">
                </td>
                <td class="style3">
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
