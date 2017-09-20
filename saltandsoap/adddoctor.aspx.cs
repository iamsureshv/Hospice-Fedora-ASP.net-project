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

public partial class adddoctor : System.Web.UI.Page
{
    DBExplorer dbe;
    protected void Page_Load(object sender, EventArgs e)
    {
        dbe = new DBExplorer(ConfigurationManager.ConnectionStrings["Fedora"].ConnectionString);
        dbe.OpenConnection();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        String dob=Request.Form.Get("txtDOB");
        if (txtDocName.Text == "" || txtAge.Text == "" || txtOnline_from.Text == "" || txtOnline_to.Text == "" || dob == "")
        {
            lblempty.Text = "Some required fields missing";
            return;
        }
        String dname = txtDocName.Text;
        String age = txtAge.Text;
        String mstatus;
        if (rdoSingle.Checked == true)
            mstatus = "Single";
        else
            mstatus = "Maried";
        String sex;
        if (rdoMale.Checked == true)
            sex = "Male";
        else
            sex = "Female";
        String spec = ddlSpec.Text;
        String qlfn = ddlQlfn.Text;
        String con_from = txtConsult_from.Text;
        String con_to = txtConsult_to.Text;
        String online_from = txtOnline_from.Text;
        String online_to = txtOnline_to.Text;
        String regdate = DateTime.Now.ToShortDateString();
        String sql = "select ID,hosp_name from hosp_reg where Username='" + Session["userid"].ToString().Trim() + "'";
        DataSet ds = dbe.getData(sql);
        String hospID = ds.Tables[0].Rows[0]["ID"].ToString();
        String hospName = ds.Tables[0].Rows[0]["hosp_name"].ToString();
        sql = "insert into Hosp_DoctorsList(DoctorName,Age,DOB,Sex,Qualification,Specialization,MStatus,"+ 
            "Consult_From,Consult_To,Online_From,Online_To,HospitalName,HospitalID,Regdate) values('" + dname + 
            "',"+ age + ",'" + dob + "','" + sex + "','" + qlfn + "','" + spec + "','" + mstatus + "','" + 
            con_from + "','"  + con_to + "','" + online_from + "','" + online_to + "','" + hospName + "'," + 
            hospID + ",'" + regdate + "')";
        int x = dbe.putData(sql);
        if (x > 0)
        {
            Response.Redirect("hosphome.aspx?id=0");
        }
        else
        {
            lblErmsg.Text = "Submision operation failed";
        }

    }
}
