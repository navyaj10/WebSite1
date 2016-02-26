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

public partial class Login : System.Web.UI.Page
{
    DataBase db = new DataBase();
    protected void Page_Load(object sender, EventArgs e)
    {
        username.Focus();
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        db.Open();
        string UName = username.Text.ToString();
        string Pass = passwd.Text.ToString();
        string Uid = db.CheckValidUser(UName, Pass);
        db.Close();

      
        if (Uid != "")
        {
            Session["UserId"] = Uid;
            lblNotValid.Visible = false;
            db.Open();
            string LogType = db.getLogType(Uid);
            LogType = LogType.Trim();
            db.Close();


            if (LogType == "Admin")
            {
                Response.Redirect("AdminHome.aspx?Uid="+Uid);
            }
            else if (LogType == "User")
            {
                Response.Redirect("Home.aspx?Uid=" + Uid);
            }
        }
        else
            lblNotValid.Visible = true;
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        username.Text = "";
        passwd.Text = "";
        lblNotValid.Visible = false;
    }
}
