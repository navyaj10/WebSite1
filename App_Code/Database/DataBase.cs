using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DataBase
/// </summary>
public class DataBase
{
     SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConString"].ToString());
	public DataBase()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void Open()
    {
        con.Open();
    }
    public void Close()
    {
        con.Close();
    }

    public string CheckValidUser(string UName, string Pass)
    {
        string Uid = "";
        SqlCommand cmd = new SqlCommand("select UserId from UserLogin where UserName='" + UName + "' and Password='" + Pass + "'", con);
        object objCmd = cmd.ExecuteScalar();

        if (objCmd != null)
            Uid = objCmd.ToString();
        return Uid;

    }
    public string getLogType(string Uid)
    {
        SqlCommand cmd = new SqlCommand("select LogType from UserLogin where UserId='" + Uid + "'", con);
        string LogType = cmd.ExecuteScalar().ToString();
        return LogType;
    }
    public void Assetreg(string AssetId, string Category, string Assettype, string Configuration, string Vendor, string Porefno, string Serialno, string Dateofinstall, string Warrantyperiod, string AssetLocation, string Department, string IsDisposed)
    {
       // DateTime dtInstall = Convert.ToDateTime(Dateofinstall.ToString().Trim());
        //DateTime Warrantyperiods = Convert.ToDateTime(Warrantyperiod.ToString().Trim());
        SqlCommand cmd = new SqlCommand("insert into Asset_Registration values('" + AssetId + "','" + Category + "','" + Assettype + "','" + Configuration + "','" + Vendor + "','" + Porefno + "','" + Serialno + "','" + Dateofinstall + "','" + Warrantyperiod + "','" + AssetLocation + "','" + Department + "','" + IsDisposed + "')", con); 
    
        cmd.ExecuteNonQuery();
        

    }
    public void AssetDisposal(string Dateofinstall, string Category, string Assettype, string Assetid, string Party)
    {
        //DateTime dtInstall = Convert.ToDateTime(Dateofinstall.ToString());
        SqlCommand cmd = new SqlCommand("insert into Asset_Disposal values('" + Dateofinstall + "','" + Category + "','" + Assettype + "','" + Assetid + "','" + Party + "')", con);
        cmd.ExecuteNonQuery();
        SqlCommand com = new SqlCommand("update Asset_Registration set IsDisposed='True' where Asset_ids='" + Assetid + "'", con);
        com.ExecuteNonQuery();
       

    }
    public void AssetLocation(string Location)
    {
        SqlCommand cmd = new SqlCommand("insert into AssetLocation(LocationName) values('" +Location + "')", con);
        cmd.ExecuteNonQuery();
       

    }
    public void AssetDepartment(string Department)
    {
        SqlCommand cmd = new SqlCommand("insert into AssetDepartment(DepartmentName) values('" + Department+ "')", con);
        cmd.ExecuteNonQuery();
        
    }
    public void AssetVendor(string Vendorname, string Address, string ContactNo)
    {
        SqlCommand cmd = new SqlCommand("insert into AssetVendor(VendorName,Address,ContactNo) values('" + Vendorname + "','"+Address+"','"+ContactNo+"')", con);
        cmd.ExecuteNonQuery();
        

    }
    public void AssetCategory(string AssetCategory)
    {
        SqlCommand cmd = new SqlCommand("insert into AssetCategory(AssetCategory) values('" + AssetCategory + "')", con);
        cmd.ExecuteNonQuery();
       

    }
    public void AssetCategoryType(string AssetCategory,string AssetType,string AssetDescription)
    {
        SqlCommand cmd = new SqlCommand("insert into AssetCategoryType(AssetCategory,AssetType,AssetDescription) values('" + AssetCategory + "','"+AssetType+"','"+AssetDescription+"')", con);
        cmd.ExecuteNonQuery();        

    }
    public DataSet getCategory(int i, string Category)
    {
        DataSet ds = new DataSet();
        if (i == 1)
        {
            SqlDataAdapter cmd = new SqlDataAdapter("select AssetCategory from AssetCategory", con);
            cmd.Fill(ds);
        }
        else if (i == 2)
        {

            SqlDataAdapter cmd = new SqlDataAdapter("select AssetType from AssetCategoryType where AssetCategory='"+Category+"'", con);
            cmd.Fill(ds);
        }
       
        
        return ds;

    }
    public DataSet getLocation(int i)
    {
        DataSet ds = new DataSet();
        if (i == 1)
        {
            SqlDataAdapter cmd = new SqlDataAdapter("select LocationName from AssetLocation", con);
            cmd.Fill(ds);
        }
        return ds;
    }
    public DataSet getDept()
    {
        DataSet ds = new DataSet();


        SqlDataAdapter cmd = new SqlDataAdapter("select DepartmentName from AssetDepartment", con);
            cmd.Fill(ds);
       
        return ds;
    }
    public DataSet getAssetId(int i)
    {
        DataSet ds = new DataSet();
        if (i == 1)
        {
            SqlDataAdapter cmd = new SqlDataAdapter("select Asset_ids from Asset_registration where IsDisposed='True'", con);
            cmd.Fill(ds);
        }
        if(i==4)
        {
            SqlDataAdapter cmd = new SqlDataAdapter("select Asset_ids from Asset_registration where IsDisposed='False'", con);
            cmd.Fill(ds);
        }
        return ds;
    }
    /*public DataSet getAssetPre(String Category)
    {
        DataSet ds = new DataSet();
        SqlDataAdapter cmd = new SqlDataAdapter("select AssetPre from AssetCategory where AssetCategory='Category'", con);
        cmd.Fill(ds);
            return ds;
    }*/
    public DataSet getConfiguration(int i,string Category, string AssetType)
    {
        DataSet ds = new DataSet();
        if (i == 1)
        {
            SqlDataAdapter cmd = new SqlDataAdapter("select  AssetDescription from AssetCategoryType where AssetCategory='" + Category + "' and AssetType='" + AssetType + "'", con);
            cmd.Fill(ds);
        }
        else if (i == 2)
        {
           // SqlDataAdapter cmd = new SqlDataAdapter("SELECT  Asset_id  FROM Asset_Registration WHERE (AssetCategory = 'TestKarnataka') AND (AssetType = 'TypeKarnataka') AND (IsDisposed = 'False')",con);
            DateTime sa = DateTime.Now;
            //SqlDataAdapter cmd = new SqlDataAdapter("select  Asset_ids from Asset_Registration where (IsDisposed = 'False') AND ((AssetCategory='" + Category + "') AND (AssetType='" + AssetType + "'))", con);//' and IsDisposed='False'
            SqlDataAdapter cmd = new SqlDataAdapter("select  Asset_ids from Asset_Registration where Warranty<='" + sa + "' AND (IsDisposed = 'False') AND ((AssetCategory='" + Category + "') AND (AssetType='" + AssetType + "'))", con);
            cmd.Fill(ds);
        }
        else if (i == 3)
        {
            
            DateTime sa = DateTime.Now;
            SqlDataAdapter cmd = new SqlDataAdapter("select  Asset_ids from Asset_Registration where (IsDisposed = 'False') AND ((AssetCategory='" + Category + "') AND (AssetType='" + AssetType + "'))", con);//' and IsDisposed='False'
            
            cmd.Fill(ds);
        }
        return ds;
    }
    public DataSet getVendor(int i)
    {
        DataSet ds = new DataSet();
        if (i == 1)
        {
            SqlDataAdapter cmd = new SqlDataAdapter("select VendorName from AssetVendor", con);
            cmd.Fill(ds);
        }
        return ds;
    }
    
    public int getMaxReqno()
    {
        SqlCommand com = new SqlCommand("Select max(RequestNo) as id from ServiceRequests",con);
        string iid = com.ExecuteScalar().ToString();
        return (int.Parse(iid.ToString())+1);
    }

    public int getMaxID()
    {
        int AssetId=0;
        int Flag = 2;
        SqlCommand com = new SqlCommand();
        com.CommandType = CommandType.StoredProcedure;
        com.CommandText = "Sp_AssetMaster";
        com.Connection = con;
        com.Parameters.Add(new SqlParameter("@Flag", Flag));
        string AId = com.ExecuteScalar().ToString();
        if(AId != "")
            AssetId= int.Parse(AId.ToString());

        return AssetId+1;
    }

    public void AddUser(string Uname, string pass)
    {
        //int Flag = 1;
        string Types = "User";
        //SqlCommand com = new SqlCommand();
        //com.CommandType = CommandType.StoredProcedure;
        //com.CommandText = "Sp_AssetMaster";
        //com.Connection = con;
        //com.Parameters.Add(new SqlParameter("@Flag", Flag));
        //com.Parameters.Add(new SqlParameter("@Uname", Uname));
        //com.Parameters.Add(new SqlParameter("@pass", pass));
        SqlCommand cmd = new SqlCommand("insert into UserLogin values('" + Uname + "','" + pass + "','" + Types + "')", con);
         cmd.ExecuteNonQuery();

         
    }
    public DataSet getServiceCentres()
    {
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter("select VendorName from AssetVendor ", con);
        da.Fill(ds);
        return ds;

    }

    public DataSet getServiceRequests(string ServiceCenter)
    {
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter();
        if (ServiceCenter == "All")
        {
           da = new SqlDataAdapter("select * from ServiceRequests ", con);
        }
        else
        {
            da = new SqlDataAdapter("select * from ServiceRequests  where VendorName ='" + ServiceCenter + "'", con);
        }
        da.Fill(ds);
        return ds;

       
    }

    public void deletetRequis(int RequesNo)
    {
        SqlCommand cmd = new SqlCommand("delete from ServiceRequests where RequestNo='" + RequesNo + "' ", con);
        cmd.ExecuteNonQuery();
    }

    public void ServiceRequest(string RequestNo, string Datesd,string Vendor, string Category, string AssetType, string AssetId, string Description, string ServiceRequired)
    {
        //DateTime dtInstall = Convert.ToDateTime(Datesd.ToString());
        SqlCommand cmd = new SqlCommand("insert into ServiceRequests values('" + RequestNo + "','" + Datesd + "','" + Vendor + "','" + Category + "','" + AssetType + "','" + AssetId + "','" + Description + "','" + ServiceRequired + "')", con);
        cmd.ExecuteNonQuery();


    }
    public void UpdateServiceRequest(string RequestNo, string Datesd, string Vendor,  string AssetId, string Description, string ServiceRequired)
    {
        //DateTime dtDates = Convert.ToDateTime(Datesd.ToString());
        SqlCommand cmd = new SqlCommand("update ServiceRequests set  RequestDate='" + Datesd + "', VendorName='" + Vendor + "', Description='" + Description + "',ServiceRequired='" + ServiceRequired + "' where RequestNo='" + RequestNo + "' and AssetId='" + AssetId + "'", con);
        cmd.ExecuteNonQuery();
    }
    public DataSet getCategoryType(int i)
    {
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter("select AssetType from AssetCategoryType  ", con);
        da.Fill(ds);
        return ds;

    }
    public DataSet getAmc(string Vendor)
    {
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter();
        if (Vendor == "All")
        {
            da = new SqlDataAdapter("select * from AMCScreen ", con);
        }
        else
        {
            da = new SqlDataAdapter("select * from AMCScreen  where Vendor ='" +Vendor + "'", con);
        }
        da.Fill(ds);
        return ds;


    }

    public DataSet getReportCategory(string Category, string Types)
    {
        DataSet ds = new DataSet();
        SqlCommand com = new SqlCommand();
        com.CommandType = CommandType.StoredProcedure;
        com.CommandText = "Sp_rptCategoryWise";
        com.Connection = con;
        com.Parameters.Add(new SqlParameter("@Category", Category));
        com.Parameters.Add(new SqlParameter("@Type", Types));
        
        SqlDataAdapter da = new SqlDataAdapter(com);
        da.Fill(ds,"Asset_Registration");
        return ds;
    }
    public void AMC(string Vendor, string Category, string AssetType, string AssetId, string StartDate, string EndDate)
    {

        SqlCommand cmd = new SqlCommand("insert into AMCScreen values('" + Vendor + "','" + Category + "','" + AssetType + "','" + AssetId + "','" + StartDate + "','" + EndDate + "')", con);
        cmd.ExecuteNonQuery();


    }
    public void UpdateAMC( string Vendor,string Category,string AssetType,string AssetId, string StartDate, string EndDate)
    {
        SqlCommand cmd = new SqlCommand("update AMCScreen set  Vendor='" + Vendor + "', AssetCategory='" + Category + "',AssetType='" + AssetType + "',AMCStartdate='" + StartDate + "',AMCEndDate='"+EndDate+"' where AssetId='" + AssetId + "'", con);
        cmd.ExecuteNonQuery();
    }
    public void deleteAmc(String AssetId)
    {
        SqlCommand cmd = new SqlCommand("delete from AMCScreen where AssetId='" + AssetId + "' ", con);
        cmd.ExecuteNonQuery();
    }
    public void getWardate( )
    {
        string tf = System.DateTime.Now.ToString();
        //DateTime ts = System.DateTime.Now.ToString();
        SqlCommand cmd = new SqlCommand("Select Asset_ids from Asset_Registration where Warranty<='"+tf+"'", con);
        cmd.ExecuteNonQuery();
    }
}
