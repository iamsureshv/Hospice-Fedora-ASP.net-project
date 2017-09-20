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

public partial class hosp_tpl : System.Web.UI.Page
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
            String id = ds.Tables[0].Rows[1][1].ToString();
            string sql = "SELECT     ClientName, Age, Sex, Address, City, State, " +
                "(SELECT DoctorName FROM Hosp_DoctorsList AS B WHERE (ID = A.DoctorName)) AS DoctorName," +
                "CONVERT(CHAR(11), AppDate, 106) AS AppDate FROM Hosp_Appnfo AS A WHERE     (HospitalID = " + id +")";
            ds.Clear();
            ds = dbe.getData(sql);
            gvTPL.DataSource = ds.Tables[0];
            gvTPL.DataBind();
        }
    }
    protected void gvTPL_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
