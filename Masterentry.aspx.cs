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

public partial class Masterentry : System.Web.UI.Page
{
    DataBase db = new DataBase();
    protected void Page_Load(object sender, EventArgs e)
    {
        db.Open();
        DataSet dsCategory = db.getCategory(1, "Nothing");
        db.Close();
        if (dsCategory.Tables[0].Rows.Count > 0)
        {
            for (int i = 0; i < dsCategory.Tables[0].Rows.Count; i++)
                dplAssetCategory.Items.Add(dsCategory.Tables[0].Rows[i][0].ToString());
        }
    }
    protected void btnLocation_Click(object sender, EventArgs e)
    {
        db.Open();
        string Location = txtLocation.Text.ToString();
        db.AssetLocation(Location);
        db.Close();
        Response.Redirect("Masterentry.aspx");
    }
    protected void btnDepartment_Click(object sender, EventArgs e)
    {
        db.Open();
        string Department = txtDepartment.Text.ToString();
        db.AssetDepartment(Department);
        db.Close();
        Response.Redirect("Masterentry.aspx");
    }
    protected void btnAddvendor_Click(object sender, EventArgs e)
    {
        db.Open();
        string Vendorname = txtVendorname.Text.ToString();
        string Address = txtAddress.Text.ToString();
        string ContactNo = txtContact.Text.ToString();
        db.AssetVendor(Vendorname,Address,ContactNo);
        db.Close();
        Response.Redirect("Masterentry.aspx");
    }
    protected void btnAddCategory_Click(object sender, EventArgs e)
    {
        db.Open();
        string AssetCategory = txtCategory.Text.ToString();
        db.AssetCategory(AssetCategory);
        db.Close();
        Response.Redirect("Masterentry.aspx");
    }
    protected void btnAddAssettype_Click(object sender, EventArgs e)
    {
        db.Open();
        string AssetCategory = dplAssetCategory.Text.ToString();
        string Assettype = txtAssettype.Text.ToString();
        string AssetDescription = txtAssetDescription.Text.ToString();
         db.AssetCategoryType(AssetCategory,Assettype,AssetDescription);
        db.Close();
        Response.Redirect("Masterentry.aspx");

    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtLocation.Text = "";
       
    }
    protected void btndeptCancel_Click(object sender, EventArgs e)
    {
        txtDepartment.Text = "";
    }
    protected void btnVendorCancel_Click(object sender, EventArgs e)
    {
        txtVendorname.Text = "";
        txtAddress.Text = "";
        txtContact.Text = "";
    }
    protected void btnCategoryCancel_Click(object sender, EventArgs e)
    {
        txtCategory.Text = "";
    }
    
    protected void btnassettypeCancel_Click(object sender, EventArgs e)
    {
        dplAssetCategory.Text="";
        txtAssettype.Text = "";
        txtAssetDescription.Text = "";
    }
    protected void btnAddCategory0_Click(object sender, EventArgs e)
    {
      
    }
    protected void btnAddCategory0_Click1(object sender, EventArgs e)
    {
        db.Open();
        string Uname = txtUserName.Text.ToString();
        string pass = txtPassRetype.Text.ToString();
        db.AddUser(Uname, pass);
        db.Close();
        Response.Redirect("Masterentry.aspx");
    }
}
