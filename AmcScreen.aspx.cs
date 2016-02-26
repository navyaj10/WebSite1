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

public partial class AmcScreen : System.Web.UI.Page
{
    DataBase db = new DataBase();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Panel1.Visible = false;
            db.Open();
            DataSet dsVendor = db.getVendor(1);
            DataSet dsCategory = db.getCategory(1, "Nothing");
            DataSet dsCategoryType = db.getCategoryType(1);
            db.Close();
            if (dsVendor.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < dsVendor.Tables[0].Rows.Count; i++)
                    dplVendor.Items.Add(dsVendor.Tables[0].Rows[i][0].ToString());
            }
            if (dsVendor.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < dsVendor.Tables[0].Rows.Count; i++)
                    dplVendorName.Items.Add(dsVendor.Tables[0].Rows[i][0].ToString());
            }
            if (dsCategory.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < dsCategory.Tables[0].Rows.Count; i++)
                    dplCategory.Items.Add(dsCategory.Tables[0].Rows[i][0].ToString());
            }
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        db.Open();

        string Vendor = dplVendorName.Text.ToString();
        string Category = dplCategory.Text.ToString();
        string AssetType = dplAssetType.Text.ToString();
        string AssetId = dplAssetId.Text.ToString();
        string StartDate = txtStartdate.Text.ToString();
        string Enddate = txtEnddate.Text.ToString();
        db.AMC(Vendor, Category, AssetType, AssetId, StartDate, Enddate);
        db.Close();
        Response.Redirect("AmcScreen.aspx");
    }
    protected void dplVendor_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (dplVendor.SelectedItem.Text.ToString() != "--Select One--")
        {
            db.Open();
            DataSet ds = db.getAmc(dplVendor.SelectedItem.Text.ToString());
            db.Close();
            gvAmc.DataSource = ds;
            gvAmc.DataBind();
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        btnUpdate.Visible = false;
        btnSave.Visible = true;
        
    }
    protected void dplCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        db.Open();
        DataSet dsCategory = db.getCategory(2, dplCategory.SelectedItem.Text.ToString());
        db.Close();
        //for (int j = 1; j < dplAssettype.Items.Count; j++)
        //dplAssettype.Items.Clear();

        if (dsCategory.Tables[0].Rows.Count > 0)
        {
            dplAssetType.Items.Clear();
            dplAssetType.Items.Add("-- Select One --");
            for (int i = 0; i < dsCategory.Tables[0].Rows.Count; i++)
                dplAssetType.Items.Add(dsCategory.Tables[0].Rows[i][0].ToString());

        }
        dplAssetType.SelectedIndex = 0;
    }
    protected void dplAssetType_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        db.Open();
      //  DataSet dsAssetId = db.getWardate();
        DataSet dsAssetId = db.getConfiguration(2,dplCategory.SelectedItem.Text.ToString(), dplAssetType.SelectedItem.Text.ToString());
        db.Close();
        if (dsAssetId.Tables[0].Rows.Count > 0)
        {
            for (int i = 0; i < dsAssetId.Tables[0].Rows.Count; i++)
                dplAssetId.Items.Add(dsAssetId.Tables[0].Rows[i][0].ToString());
        }
    }

    protected void imgbtnCalendar_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtStartdate.Text = Calendar1.SelectedDate.ToString("MM/dd/yyyy");
        Calendar1.Visible = false;
    }
    protected void imgbtnCalendar1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar2.Visible = true;
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        txtEnddate.Text = Calendar2.SelectedDate.ToString("MM/dd/yyyy");
        Calendar2.Visible = false;
        DateTime dinst = Convert.ToDateTime(txtStartdate.Text.ToString());
        DateTime dwar = Convert.ToDateTime(txtEnddate.Text.ToString());
        if (dinst > dwar)
        {
            Errormsg.Visible = true;
            txtEnddate.Text = "";

        }
        else
        {
            Errormsg.Visible = false;
        }
    }
    protected void gvAmc_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        btnUpdate.Visible = true;
        btnSave.Visible = false;
        int i = gvAmc.SelectedRow.RowIndex;
        string Vendor = gvAmc.Rows[i].Cells[1].Text.ToString();
        string Category = gvAmc.Rows[i].Cells[2].Text.ToString();
        string AssetType = gvAmc.Rows[i].Cells[3].Text.ToString();
        string AssetId = gvAmc.Rows[i].Cells[4].Text.ToString();
        string Startdate = gvAmc.Rows[i].Cells[5].Text.ToString();
        string Enddate = gvAmc.Rows[i].Cells[6].Text.ToString();

        //db.Open();
        //txtRequestno.Text = Convert.ToString( db.getMaxReqno());
        //db.Close();

        dplVendorName.Items.Clear();
        dplCategory.Items.Clear();
        dplAssetType.Items.Clear();
        dplAssetId.Items.Clear();
        dplVendorName.Items.Add(Vendor);
        dplCategory.Items.Add(Category);
        dplAssetType.Items.Add(AssetType);
        dplAssetId.Items.Add(AssetId);
        txtStartdate.Text = Startdate;
        txtEnddate.Text = Enddate;

        db.Open();
        DataSet dsVendor = db.getVendor(1);
        db.Close();
        if (dsVendor.Tables[0].Rows.Count > 0)
        {
            for (int j = 0; j < dsVendor.Tables[0].Rows.Count; j++)
                dplVendor.Items.Add(dsVendor.Tables[0].Rows[j][0].ToString());
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        db.Open();
        int i = gvAmc.SelectedRow.RowIndex;
        string Vendor = gvAmc.Rows[i].Cells[1].Text.ToString();
        string Category = gvAmc.Rows[i].Cells[2].Text.ToString();
        string AssetType = gvAmc.Rows[i].Cells[3].Text.ToString();
        string AssetId = gvAmc.Rows[i].Cells[4].Text.ToString();
        string Startdate = gvAmc.Rows[i].Cells[5].Text.ToString();
        string Enddate = gvAmc.Rows[i].Cells[6].Text.ToString();
        db.UpdateAMC( Vendor,Category,AssetType, AssetId,Startdate,Enddate );

        DataSet ds = db.getAmc("All");
        gvAmc.DataSource = ds;
        gvAmc.DataBind();
        db.Close();

        Panel1.Visible = false;
        Calendar1.Visible = false;

        
        dplVendor.Items.Clear();
        dplCategory.Items.Clear();
        dplAssetType.Items.Clear();
        //txtAssetId.Text = "";
        txtStartdate.Text = "";
        txtEnddate.Text = "";

    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("AmcScreen.aspx");
    }
}
