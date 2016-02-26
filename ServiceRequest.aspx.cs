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

public partial class ServiceRequest : System.Web.UI.Page
{
    DataBase db = new DataBase();
    protected void Page_Load(object sender, EventArgs e)
    {
        db.Open();
        int RequestNo = db.getMaxReqno();
        db.Close();

        txtRequestno.Text = RequestNo.ToString();
        if (!IsPostBack)
        {
            DateTime Today = System.DateTime.Now;
            txtDate.Text = Today.ToString("MM/dd/yyyy");
            db.Open();
            DataSet dsServiceCentres = db.getServiceCentres();
            DataSet dsCategory = db.getCategory(1,"Nothing");
            DataSet dsCategoryType = db.getCategoryType(1);
            DataSet dsVendor = db.getVendor(1);
            db.Close();
            if (dsVendor.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < dsVendor.Tables[0].Rows.Count; i++)
                    dplVendor.Items.Add(dsVendor.Tables[0].Rows[i][0].ToString());
            }


            if (dsServiceCentres.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < dsServiceCentres.Tables[0].Rows.Count; i++)
                    dplServiceCenter.Items.Add(dsServiceCentres.Tables[0].Rows[i][0].ToString());
            }
            if (dsCategory.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < dsCategory.Tables[0].Rows.Count; i++)
                    dplCategory.Items.Add(dsCategory.Tables[0].Rows[i][0].ToString());
            }
            
          
          

        }
    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
    protected void btnNew_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        btnUpdate.Visible = false;
        btnSave.Visible = true;

        dplTypes.Items.Clear();
        dplVendor.Items.Clear();
        dplCategory.Items.Clear();
        dplCategory.Items.Add("--Select One--");
        dplVendor.Items.Add("--Select One--");
        dplTypes.Items.Add("--Select One--");

        db.Open();
        DataSet dsCategory = db.getCategory(1, "Nothing");
        DataSet dsCategoryType = db.getCategoryType(1);
        DataSet dsVendor = db.getVendor(1);
        db.Close();
        if (dsVendor.Tables[0].Rows.Count > 0)
        {
            for (int i = 0; i < dsVendor.Tables[0].Rows.Count; i++)
                dplVendor.Items.Add(dsVendor.Tables[0].Rows[i][0].ToString());
        }


        //if (dsServiceCentres.Tables[0].Rows.Count > 0)
        //{
        //    for (int i = 0; i < dsServiceCentres.Tables[0].Rows.Count; i++)
        //        dplServiceCenter.Items.Add(dsServiceCentres.Tables[0].Rows[i][0].ToString());
        //}
        if (dsCategory.Tables[0].Rows.Count > 0)
        {
            for (int i = 0; i < dsCategory.Tables[0].Rows.Count; i++)
                dplCategory.Items.Add(dsCategory.Tables[0].Rows[i][0].ToString());
        }

        if (dsCategoryType.Tables[0].Rows.Count > 0)
        {
            for (int i = 0; i < dsCategoryType.Tables[0].Rows.Count; i++)
                dplTypes.Items.Add(dsCategoryType.Tables[0].Rows[i][0].ToString());
        }
            

    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
   


    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        if (gvRequest.SelectedRow != null)
        {
            Panel1.Visible = false;
            string ReqNo = gvRequest.Rows[gvRequest.SelectedRow.RowIndex].Cells[1].Text.ToString();
            int RequestNo = int.Parse(ReqNo);
            db.Open();
            db.deletetRequis(RequestNo);
            db.Close();

            db.Open();
            DataSet ds = db.getServiceRequests("All");
            gvRequest.DataSource = ds;
            gvRequest.DataBind();
            db.Close();
        }
       
            
    }
    protected void dplServiceCenter_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (dplServiceCenter.SelectedItem.Text.ToString() != "--Select One--")
        {
            db.Open();
            DataSet ds = db.getServiceRequests(dplServiceCenter.SelectedItem.Text.ToString());
            db.Close();
            gvRequest.DataSource = ds;
            gvRequest.DataBind();
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        db.Open();
        string RequestNo = txtRequestno.Text.ToString();
        string Datesd = txtDate.Text.ToString();
        string Vendor = dplVendor.Text.ToString();
        string Category = dplCategory.Text.ToString();
        string AssetType = dplTypes.Text.ToString();
        string AssetId = dplAssetID.Text.ToString();
        string Description = txtDescription.Text.ToString();
        string ServiceRequired = txtServiceRequired.Text.ToString();
        db.ServiceRequest(RequestNo,Datesd,Vendor,Category,AssetType,AssetId,Description,ServiceRequired);
        db.Close();
        txtRequestno.Text = "";
        

        txtDate.Text = "";
        dplVendor.Items.Clear();
        dplCategory.Items.Clear();
        dplTypes.Items.Clear();
        //txtAssetId.Text = "";
        txtDescription.Text="";
        txtServiceRequired.Text = "";
        Response.Redirect("ServiceRequest.aspx");

    }




    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;

    }

    protected void gvRequest_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        btnUpdate.Visible = true;
        btnSave.Visible = false;
        int i = gvRequest.SelectedRow.RowIndex;
        string RequestNo = gvRequest.Rows[i].Cells[1].Text.ToString();
        string Dates = gvRequest.Rows[i].Cells[2].Text.ToString();
        string Vendor = gvRequest.Rows[i].Cells[3].Text.ToString();
        string Category = gvRequest.Rows[i].Cells[4].Text.ToString();
        string AssetType = gvRequest.Rows[i].Cells[5].Text.ToString();
        string AssetId = gvRequest.Rows[i].Cells[6].Text.ToString();
        string Description = gvRequest.Rows[i].Cells[7].Text.ToString();
        string ServiceRequired = gvRequest.Rows[i].Cells[8].Text.ToString();

        //db.Open();
        //txtRequestno.Text = Convert.ToString( db.getMaxReqno());
        //db.Close();

        txtRequestno.Text = RequestNo;
        txtDate.Text= Dates;        
        dplCategory.Items.Clear();
        dplTypes.Items.Clear();
        dplAssetID.Items.Clear();
        dplVendor.Items.Clear();
       
        dplCategory.Items.Add(Category);
        dplTypes.Items.Add(AssetType);
        dplVendor.Items.Add(Vendor);
        dplAssetID.Items.Add( AssetId);
        txtDescription.Text = Description;
        txtServiceRequired.Text = ServiceRequired;

        db.Open();
        DataSet dsVendor = db.getVendor(1);
        db.Close();
        if (dsVendor.Tables[0].Rows.Count > 0)
        {
            for (int j = 0; j < dsVendor.Tables[0].Rows.Count; j++)
                dplVendor.Items.Add(dsVendor.Tables[0].Rows[j][0].ToString());
        }
        
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
            dplTypes.Items.Clear();
            dplTypes.Items.Add("-- Select One --");
            for (int i = 0; i < dsCategory.Tables[0].Rows.Count; i++)
                dplTypes.Items.Add(dsCategory.Tables[0].Rows[i][0].ToString());

        }
        dplTypes.SelectedIndex = 0;
    }
    protected void imgbtnCalendar_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtDate.Text = Calendar1.SelectedDate.ToString("MM/dd/yyyy");
        Calendar1.Visible = false;
    }
    protected void btnCancel_Click1(object sender, EventArgs e)
    {
        Calendar1.Visible = false;
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        db.Open();
        string RequestNo = gvRequest.Rows[gvRequest.SelectedRow.RowIndex].Cells[1].Text.ToString();// txtRequestno.Text.ToString();
        string Datesd = txtDate.Text.ToString();
        string Vendor = dplVendor.Text.ToString();
        string Category = dplCategory.Text.ToString();
        string AssetType = dplTypes.Text.ToString();
        string AssetId = dplAssetID.Text.ToString();
        string Description = txtDescription.Text.ToString();
        string ServiceRequired = txtServiceRequired.Text.ToString();
        db.UpdateServiceRequest(RequestNo, Datesd, Vendor,AssetId, Description, ServiceRequired);
        
        DataSet ds = db.getServiceRequests("All");       
        gvRequest.DataSource = ds;
        gvRequest.DataBind();
        db.Close();

        Panel1.Visible = false;
        Calendar1.Visible = false;
        
        txtRequestno.Text = "";
        txtDate.Text = "";
        dplVendor.Items.Clear();
        dplCategory.Items.Clear();
        dplTypes.Items.Clear();
        //txtAssetId.Text = "";
        txtDescription.Text = "";
        txtServiceRequired.Text = "";
       
    }
    protected void dplVendor_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void dplTypes_SelectedIndexChanged(object sender, EventArgs e)
    {
        string Cat = dplCategory.SelectedItem.Text.ToString();
        string Types = dplTypes.SelectedItem.Text.ToString();
        db.Open();
        DataSet dsAssetId = db.getConfiguration(2, Cat, Types);
        db.Close();
        if (dsAssetId.Tables[0].Rows.Count > 0)
        {
            for (int i = 0; i < dsAssetId.Tables[0].Rows.Count; i++)
                dplAssetID.Items.Add(dsAssetId.Tables[0].Rows[i][0].ToString());
        }
    }
}
