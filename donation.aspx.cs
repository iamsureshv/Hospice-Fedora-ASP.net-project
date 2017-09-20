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

public partial class donation : System.Web.UI.Page
{
    DBExplorer dbe;
    protected void Page_Load(object sender, EventArgs e)
    {
        dbe = new DBExplorer(ConfigurationManager.ConnectionStrings["Fedora"].ConnectionString);
        dbe.OpenConnection();
    }
    protected void btnDonate_Click(object sender, EventArgs e)
    {
        if (ddlDistrict.Text == "--Select--")
        {
            lblmsg.Text = "Please select a district";
            return;
        }
        if (ddlOrgon.Text == "--Select--")
        {
            lblmsg.Text = "Please select an orgon";
            return;
        }
        String dob=Request.Form.Get("txtDOB");
        String sql = "insert into Donation (DonorNAme,Sex,DOB,Contact,City,District,Orgon,Regdate) values('" +
            txtName.Text + "','" + rdoSexList.SelectedValue + "','" + dob + "','" + txtPhno.Text + "','" +
            txtCity.Text + "','" + ddlDistrict.Text + "','" + ddlOrgon.Text + "','" + DateTime.Now.ToShortDateString() + "')";
        int x=dbe.putData(sql);
        if (x > 0)
        {
            lblmsg.Text = "Thank you for donating your orgon";
            txtName.Text = "";
            rdoSexList.SelectedIndex = 0;
            ddlOrgon.SelectedIndex = 0;
            ddlDistrict.SelectedIndex = 0;
            txtPhno.Text = "";
            txtCity.Text = "";
            txtAddress.Text = "";

        }
        else
        {
            lblmsg.Text = "Registration failed";
        }
    }
}
