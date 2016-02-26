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

public partial class ReportAssetType : System.Web.UI.Page
{
    DataBase db = new DataBase();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string ID = Request.QueryString["Id"].ToString();
            if (ID == "1")
            {
                db.Open();
                DataSet ds = db.getCategory(1, "All");
                db.Close();

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    ddlcategory.Items.Add(ds.Tables[0].Rows[i][0].ToString());
                Panel1.Visible = true;
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
            }
            else if (ID == "2")
            {
                Panel1.Visible = false;
                Panel2.Visible = true;
                Panel3.Visible = false;
                Panel4.Visible = false; 
                db.Open();
                DataSet ds = db.getAssetId(4);
                db.Close();

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    dplAssetId.Items.Add(ds.Tables[0].Rows[i][0].ToString());
            }
            else if (ID == "3")
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = true;
                Panel4.Visible = false; 
                db.Open();
                DataSet ds = db.getCategory(1,"all");
                db.Close();

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    dplCategory.Items.Add(ds.Tables[0].Rows[i][0].ToString());
            }
            else if (ID == "4")
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = true; 
                db.Open();
                DataSet ds = db.getAssetId(1);
                db.Close();

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    dplAssetiid.Items.Add(ds.Tables[0].Rows[i][0].ToString());
            }
        }
      
   }
    protected void btnPreview_Click(object sender, EventArgs e)
    {

       
    }
    protected void ddlcategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        db.Open();
        DataSet ds = db.getCategory(2,ddlcategory.SelectedItem.Text.ToString() );
        db.Close();

        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            ddlAsset.Items.Add(ds.Tables[0].Rows[i][0].ToString());


    }
    
    protected void btnPreview_Click1(object sender, EventArgs e)
    {
        string Category = ddlcategory.SelectedItem.Text.ToString();
        string Type = ddlAsset.SelectedItem.Text.ToString();
        Response.Redirect("~/rptfrmCategoryWise.aspx?C=" + Category + "&T=" + Type);
    }
    protected void btnPreview0_Click1(object sender, EventArgs e)
    {
        string AssetID = dplAssetId.SelectedItem.Text.ToString();
        Response.Redirect("~/rptfrmAssetId.aspx?C=" + AssetID);
    }
    protected void btnPreview3_Click(object sender, EventArgs e)
    {
        string Category = dplCategory.SelectedItem.Text.ToString();
        Response.Redirect("~/rptfrmReportType.aspx?C=" + Category );
    }
    protected void btnPreviewid_Click(object sender, EventArgs e)
    {
        string AssetID1 = dplAssetiid.SelectedItem.Text.ToString();
        Response.Redirect("~/rptfrmDisposal.aspx?C=" + AssetID1);
    }
}
