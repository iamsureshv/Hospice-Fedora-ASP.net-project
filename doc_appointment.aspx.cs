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
using System.Data.SqlClient;


public partial class appointment : System.Web.UI.Page
{
    DBExplorer dbe;
        

    protected void Page_Load(object sender, EventArgs e)
    {
        dbe=new DBExplorer(ConfigurationManager.ConnectionStrings["Fedora"].ConnectionString);
        dbe.OpenConnection();
        ddlSpec.Attributes.Add("onchange", "getDocNames(this.value)");
        //ddlDocList.Attributes.Add("onchange", "getInfo(this.value)");
        btnSave.Attributes.Add("onclick","validateForm()");
        if (!IsPostBack)
        {
            ddlSpec.Items.Add("--Select--");
            DataSet ds = dbe.getData("select Distinct specialization from doc_reg");
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                ddlSpec.Items.Add(dr["specialization"].ToString());
            }
            
        }
    }


    protected void btnsave_Click(object sender, EventArgs e)
    {        
        string name = txtname.Text;
        int age = Int32.Parse(txtage.Text);
        string dob = Request.Form.Get("txtDOB");
        string sex = rdoListSex.SelectedValue;
        string mstatus = rdoListMStatus.SelectedValue;
        string addr = txtaddr.Text;
        string email = txtemail.Text;
        string city = txtcity.Text;
        string state = txtstate.Text;
        string phone = txtphone.Text;
        string mobile = txtmobile.Text;
        string docid = Request.Form.Get("ddlDocName");
        DateTime dt = DateTime.Now;
        String appdate = Request.Form.Get("appDate");
        String sql = "insert into Doc_AppInfo (ClientName,Age,DOB,Sex,MStatus,Address," + 
            "Email,City,State,Phone,Mobile,DoctorID,AppDate,Regdate) values('" + name + "'," +
                 age + ",'" + dob + "','" + sex + "','" + mstatus + "','" +  addr + "','" + email + "','" +
                 city + "','" + state + "','" + phone + "','" + mobile + "','" +
                 docid + "','" + appdate + "','" + dt + "')";
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


    
