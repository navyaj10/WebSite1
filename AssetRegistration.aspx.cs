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
using System.Messaging;

public partial class Default3 : System.Web.UI.Page
{
    DataBase db = new DataBase();   
   
    protected void Page_Load(object sender, EventArgs e)
    {
        db.Open();
        //int AssetId = db.getMaxID();
        db.Close();
        //txtAssetid.Text = "Lap"+AssetId.ToString();
        if (!IsPostBack)
        {
            db.Open();
            DataSet dsCategory = db.getCategory(1, "Nothing");
            DataSet dsLocation = db.getLocation(1);
            DataSet dsVendor = db.getVendor(1);
            DataSet dsdept = db.getDept();
            db.Close();

            if (dsCategory.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < dsCategory.Tables[0].Rows.Count; i++)
                    dplCategory.Items.Add(dsCategory.Tables[0].Rows[i][0].ToString());
            }
            if (dsLocation.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < dsLocation.Tables[0].Rows.Count; i++)
                    dplAssetLocation.Items.Add(dsLocation.Tables[0].Rows[i][0].ToString());
            }
            if (dsVendor.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < dsVendor.Tables[0].Rows.Count; i++)
                    dplVendor.Items.Add(dsVendor.Tables[0].Rows[i][0].ToString());
            }
            if (dsdept.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < dsdept.Tables[0].Rows.Count; i++)
                    dpldept.Items.Add(dsdept.Tables[0].Rows[i][0].ToString());
            }

        }
        
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {

        
        string AssetId= txtAssetid.Text.ToString();
        string Category = dplCategory.Text.ToString();
        string Assettype = dplAssettype.Text.ToString();
        string Configuration = txtConfiguration.Text.ToString();
        string Vendor = dplVendor.Text.ToString();
        string Porefno = txtPoreferance.Text.ToString();
        string Serialno = txtSerialno.Text.ToString();
        string Warrantyperiod = txtWarranty.Text.ToString();
        string Dateofinstall = txtDateofInstall.Text.ToString();
        string AssetLocation = dplAssetLocation.Text.ToString();
        string Department = dpldept.Text.ToString();
        string IsDisposed = "False";
        
        db.Open();
        db.Assetreg(AssetId, Category, Assettype, Configuration, Vendor, Porefno, Serialno, Dateofinstall,Warrantyperiod, AssetLocation,Department, IsDisposed);
        db.Close();
        Response.Redirect("AssetRegistration.aspx");

    }
    protected void dplCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        db.Open();
        DataSet dsCategory = db.getCategory(2, dplCategory.SelectedItem.Text.ToString());
        int AssetId = db.getMaxID();
        //DataSet Assetpre = db.getAssetPre(dplCategory.SelectedItem.Text.ToString());
        db.Close();
        //for (int j = 1; j < dplAssettype.Items.Count; j++)
        //dplAssettype.Items.Clear();
        String str=dplCategory.SelectedItem.ToString();
        if(str.Length>2)
        txtAssetid.Text = dplCategory.SelectedItem.ToString().Substring(0,3).ToUpper() + AssetId.ToString() ;
        else
            txtAssetid.Text = dplCategory.SelectedItem.ToString().Substring(0).ToUpper() + AssetId.ToString() ;

        if (dsCategory.Tables[0].Rows.Count > 0)
        {
            dplAssettype.Items.Clear();
            dplAssettype.Items.Add("-- Select One --");
            for (int i = 0; i < dsCategory.Tables[0].Rows.Count; i++)
                dplAssettype.Items.Add(dsCategory.Tables[0].Rows[i][0].ToString());

        }
        dplAssettype.SelectedIndex = 0;
        
    }
    protected void dplAssettype_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtConfiguration.Text = "";
        db.Open();
        DataSet dsCategory = db.getConfiguration(1,dplCategory.SelectedItem.Text.ToString(), dplAssettype.SelectedItem.Text.ToString());
        db.Close();

        if (dsCategory.Tables[0].Rows.Count > 0)
        {           
                txtConfiguration.Text=dsCategory.Tables[0].Rows[0][0].ToString();
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        dplCategory.Items.Clear();
        dplCategory.Items.Add("--Select One--");
        dplAssettype.Items.Clear();
        dplAssettype.Items.Add("-- Select One --");
        txtConfiguration.Text = "";
        dplVendor.Items.Clear();
        dplVendor.Items.Add("--Select One--");
        txtPoreferance.Text = "";
        txtSerialno.Text = "";
        txtWarranty.Text = "";
        txtDateofInstall.Text = "";
        dplAssetLocation.Items.Clear();
        dplAssetLocation.Items.Add("--Select One--");
        dpldept.Items.Clear();
        dpldept.Items.Add("--Select One--");
        
            db.Open();
            DataSet dsCategory = db.getCategory(1, "Nothing");
            DataSet dsLocation = db.getLocation(1);
            DataSet dsVendor = db.getVendor(1);
            db.Close();

            if (dsCategory.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < dsCategory.Tables[0].Rows.Count; i++)
                    dplCategory.Items.Add(dsCategory.Tables[0].Rows[i][0].ToString());
            }
            if (dsLocation.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < dsLocation.Tables[0].Rows.Count; i++)
                    dplAssetLocation.Items.Add(dsLocation.Tables[0].Rows[i][0].ToString());
            }
            if (dsVendor.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < dsVendor.Tables[0].Rows.Count; i++)
                    dplVendor.Items.Add(dsVendor.Tables[0].Rows[i][0].ToString());
            }

        
    }
    protected void imgbtnCalendar_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible=true;
        
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtDateofInstall.Text = Calendar1.SelectedDate.ToString("MM/dd/yyyy");
        Calendar1.Visible = false;
    }
    protected void imgbtnCalendar_Click1(object sender, ImageClickEventArgs e)
    {
        Calendar2.Visible = true;
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        txtWarranty.Text = Calendar2.SelectedDate.ToString("MM/dd/yyyy");
        Calendar2.Visible = false;
        DateTime dinst = Convert.ToDateTime(txtDateofInstall.Text.ToString());
        DateTime dwar = Convert.ToDateTime(txtWarranty.Text.ToString());
        if (dinst > dwar)
        {
            Errormsg.Visible = true;
            txtWarranty.Text = "";

        }
        else
        {
            Errormsg.Visible = false;
        }
    }
    protected void txtWarranty_TextChanged(object sender, EventArgs e)
    {
        DateTime dinst = Convert.ToDateTime(txtDateofInstall.Text.ToString());
        DateTime dwar = Convert.ToDateTime(txtWarranty.Text.ToString());
        if(dinst>dwar)
        {
            Errormsg.Visible= true;
            
        }
    }
}
