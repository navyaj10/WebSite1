<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rptfrmCategoryWise.aspx.cs" Inherits="rptfrmCategoryWise" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 70%;
        }
        .style2
        {
            width: 866px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
                        AutoDataBind="true" DisplayGroupTree="False" 
                        ReportSourceID="CrystalReportSource1" 
                         ReuseParameterValuesOnRefresh="True" Width="100%" />
                    <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
                        <Report FileName="rptCategory.rpt">
                        </Report>
                    </CR:CrystalReportSource>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
