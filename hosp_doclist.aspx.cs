using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class hosp_doclist : System.Web.UI.Page
{
    DBExplorer dbe;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null)
        {
            Response.Redirect("index.aspx");
        }
        dbe = new DBExplorer(ConfigurationManager.ConnectionStrings["Fedora"].ConnectionString);
        dbe.OpenConnection();
        if (!IsPostBack)
        {
            String huserid = Session["userid"].ToString();
            ds = dbe.getData("select ID from hosp_reg where Username='" + huserid + "'");
            String hid = ds.Tables[0].Rows.ToString();
            String sql = "select DoctorName,Age,DOB,Sex,Qualification,Specialization,MStatus from Hosp_DoctorsList where HospitalID=" + hid;
            ds.Clear();
            ds = dbe.getData(sql);
            gvDocList.DataSource = ds.Tables[0];
            gvDocList.DataBind();
        }
    }
    protected void gvDocList_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
