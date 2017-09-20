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

public partial class reg_ambulance : System.Web.UI.Page
{
    DBExplorer dbe;
    protected void Page_Load(object sender, EventArgs e)
    {
        dbe = new DBExplorer(ConfigurationManager.ConnectionStrings["Fedora"].ConnectionString);
        dbe.OpenConnection();
    }


    protected void btnRegister_Click(object sender, EventArgs e)
    {
        if (ddlDistrict.Text == "--Select--")
        {
            lblmsg.Text = "Select a valid district name";
            return;
        }
        String sql = "Insert into  AmbulanceService  (Provider,Address,Phone,Mobile,City,District,Email) values('" +
            txtProvider.Text + "','" + txtAddress.Text + "','" + txtPhone.Text + "','" + txtMobile.Text + "','" +
            txtCity.Text + "','" + ddlDistrict.SelectedValue + "','" + txtEmail.Text + "')";
        int x = dbe.putData(sql);
        if (x > 0)
        {
            Response.Redirect("index.aspx?id=amb");
        }
        else
        {
            lblmsg.Text = "Error on registration process";
        }
    }
}
