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

public partial class hosp_appoinment : System.Web.UI.Page
{
    DBExplorer dbe;
    protected void Page_Load(object sender, EventArgs e)
    {
        ddlSpec.Attributes.Add("onchange", "getHospNames(this.value)");
        dbe = new DBExplorer(ConfigurationManager.ConnectionStrings["Fedora"].ConnectionString);
        dbe.OpenConnection();
        if (!IsPostBack)
        {
            ddlSpec.Items.Add("--Select--");
            DataSet ds = dbe.getData("select Distinct Specialization from Hosp_DoctorsList");
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                ddlSpec.Items.Add(dr["Specialization"].ToString());
            }

        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        String pname=txtname.Text;
        String age=txtage.Text;
        String dob=Request.Form.Get("txtDOB");
        String sex=rdoListSex.SelectedValue ;        
        String mstatus=rdoListMStatus.SelectedValue;
        String addr=txtaddr.Text;
        String email=txtemail.Text;
        String city=txtcity.Text;
        String state=txtstate.Text;
        String phone=txtphone.Text;
        String mobile=txtmobile.Text;
        String pincode=txtpin.Text;
        String spec=ddlSpec.SelectedValue;
        String hospid=Request.Form.Get("ddlHospName");
        String docname=Request.Form.Get("ddlDocName");
        String appDate=Request.Form.Get("appDate");
        DateTime dt = DateTime.Now;

        if (dob == "" || appDate == "" || hospid == "--Select--" || docname == "--Select--" || spec == "--Select--")
        {
            lblMsg.Text = "Some required fields missing";
            return;
        }
        String sql = "insert into Hosp_Appnfo (ClientName,Age,DOB,Sex,MStatus,Address,Email,City,State," +
            "Phone,Mobile,Pin,HospitalID,DoctorName,AppDate,Regdate) values('"+ pname + "'," + age + ",'" + dob +
            "','" + sex + "','"+ mstatus + "','" + addr + "','" + email + "','" + city + "','" + state +"','" +
            phone + "','" + mobile + "','" + pincode + "'," + hospid + ",'" + docname + "','" + appDate + "','" + dt + "')";
        int x = dbe.putData(sql);
        if (x > 0)
        {
            Response.Redirect("index.aspx?id=regc");
        }
        else
        {
            lblMsg.Text = "Appoinment registration failed";
        }
    }
}
