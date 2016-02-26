using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        DataBase db = new DataBase();
        if (Session["UserId"] != null)
        {
            string Uid = Session["UserId"].ToString();
            db.Open();
            string LogType = db.getLogType(Uid);
            db.Close();

            LogType = LogType.Trim();
            if (LogType == "Admin")
            {
                Menu1.Visible = true;
                Menu2.Visible = false;
            }
            else
            {
                Menu1.Visible = false;
                Menu2.Visible = true;
            }
        }
        else
            Response.Redirect("~/Login.aspx");

       
    }

    protected void lnkSignOut_Click(object sender, EventArgs e)
    {
        Session["UserId"] = null;
        Response.Redirect("~/Login.aspx");
            
    }
}
