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

public partial class AssetDisposal : System.Web.UI.Page
{
    DataBase db = new DataBase();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DateTime Today = System.DateTime.Now;
            txtdate.Text = Today.ToString("MM/dd/yyyy");
            db.Open();
            DataSet dsCategory = db.getCategory(1, "Nothing");
            DataSet dsAssetId = db.getAssetId(1);
            db.Close();

            if (dsCategory.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < dsCategory.Tables[0].Rows.Count; i++)
                    dplCategory.Items.Add(dsCategory.Tables[0].Rows[i][0].ToString());
            }
            if (dsAssetId.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < dsAssetId.Tables[0].Rows.Count; i++)
                    dplAssetid.Items.Add(dsAssetId.Tables[0].Rows[i][0].ToString());
            }
         
        }
    }
    protected void save_Click(object sender, EventArgs e)
    {

        db.Open();
        string Dateofinstall = txtdate.Text.ToString();
        string Category = dplCategory.Text.ToString();
        string Assettype = dplAssettype.Text.ToString();
        string Assetid = dplAssetid.Text.ToString();
        string party = txtParty.Text.ToString();
        db.AssetDisposal(Dateofinstall, Category, Assettype, Assetid, party);
        db.Close();
        Response.Redirect("AssetDisposal.aspx");
    }
    protected void dplCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        dplAssettype.Items.Clear();
        db.Open();
        DataSet dsCategory = db.getCategory(2, dplCategory.SelectedItem.Text.ToString());
        db.Close();

        if (dsCategory.Tables[0].Rows.Count > 0)
        {
            dplAssettype.Items.Add("--Select One--");
            for (int i = 0; i < dsCategory.Tables[0].Rows.Count; i++)
                dplAssettype.Items.Add(dsCategory.Tables[0].Rows[i][0].ToString());
        }
        
    }
    protected void cancel_Click(object sender, EventArgs e)
    {
        txtdate.Text = "";
        dplCategory.Items.Clear();
        dplCategory.Items.Add("--Select One--");
        dplAssettype.Items.Clear();
        dplAssettype.Items.Add("--Select One--");
        dplAssetid.Items.Clear();
        dplAssetid.Items.Add("Select One--");
        txtParty.Text = "";
        db.Open();
        DataSet dsCategory = db.getCategory(1, "Nothing");
        
        db.Close();

        if (dsCategory.Tables[0].Rows.Count > 0)
        {
            for (int i = 0; i < dsCategory.Tables[0].Rows.Count; i++)
                dplCategory.Items.Add(dsCategory.Tables[0].Rows[i][0].ToString());
        }
       
    }
    protected void imgbtnCalendar_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtdate.Text = Calendar1.SelectedDate.ToString("MM/dd/yyyy");
        Calendar1.Visible = false;
    }
    protected void dplAssettype_SelectedIndexChanged(object sender, EventArgs e)
    {
        dplAssetid.Items.Clear();
        if (dplAssettype.SelectedItem.Text.ToString() != "--Select One--" && dplCategory.SelectedItem.Text.ToString() != "--Select One--")
        {
            string Cat = dplCategory.SelectedItem.Text.ToString();
            string Types = dplAssettype.SelectedItem.Text.ToString();
            db.Open();
            DataSet dsAssetId = db.getConfiguration(3, Cat,Types);
            db.Close();
            if (dsAssetId.Tables[0].Rows.Count > 0)
            {
                //dplAssetid.Items.Clear();
                dplAssetid.Items.Add("--Select One--");
                for (int i = 0; i < dsAssetId.Tables[0].Rows.Count; i++)
                    dplAssetid.Items.Add(dsAssetId.Tables[0].Rows[i][0].ToString());
            }
            else
                dplAssetid.Items.Add("--Select One--");
        }
    }
}
