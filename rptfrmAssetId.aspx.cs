using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using CrystalDecisions.Shared;
using CrystalDecisions.ReportSource;
using CrystalDecisions.Web;
using CrystalDecisions.CrystalReports;
using CrystalDecisions.CrystalReports.Engine;

public partial class rptfrmAssetId : System.Web.UI.Page
{
    public TableLogOnInfo LogInfo = new TableLogOnInfo();


    protected void Page_Load(object sender, EventArgs e)
    {   
        string AssetId= Request.QueryString["C"].ToString();
        SetLogonInfo();

        string reportPath = Server.MapPath("rptAssetId.rpt");

        CrystalReportViewer1.ReportSource = reportPath;

        ParameterFields parameterFields = CrystalReportViewer1.ParameterFieldInfo;

        CrystalReportViewer1.LogOnInfo.Add(LogInfo);

        SetCurrentValuesForParameterField(parameterFields, AssetId, "@AssetId");

        
    }
    private void SetCurrentValuesForParameterField(ParameterFields parameterFields, string val, string parmFiledName)
    {
        ParameterValues currentParameterValues = new ParameterValues();

        ParameterDiscreteValue parameterDiscreteValue = new ParameterDiscreteValue();
        parameterDiscreteValue.Value = val.ToString();
        currentParameterValues.Add(parameterDiscreteValue);

        ParameterField parameterField = parameterFields[parmFiledName.ToString()];
        parameterField.CurrentValues = currentParameterValues;

    }
    private void SetLogonInfo()
    {
        LogInfo.ConnectionInfo.ServerName = ConfigurationManager.AppSettings["Server"];
        LogInfo.ConnectionInfo.UserID = ConfigurationManager.AppSettings["UserID"];
        LogInfo.ConnectionInfo.Password = ConfigurationManager.AppSettings["Password"];
        LogInfo.ConnectionInfo.DatabaseName = ConfigurationManager.AppSettings["Database"];
    }

}
