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

public partial class hospitalreg : System.Web.UI.Page
{
    DBExplorer dbe;
    protected void Page_Load(object sender, EventArgs e)
    {
        dbe = new DBExplorer(ConfigurationManager.ConnectionStrings["Fedora"].ConnectionString);
        dbe.OpenConnection();  
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtPassword.Text == "" || txtCity.Text == "" || txtNum.Text == "" || txtPhone.Text == "" ||
            txtZIP.Text == ""|| txtState.Text == "" || txtStreet.Text == "" || txtUsername.Text == "" )
        {
            lblMsg.Text = "Some required fields missing";
            return;
        }
        string hname = txtHospName.Text;
        string num = txtNum.Text;
        string address = txtAddress.Text;
        string astreet = txtStreet.Text;
        string astate = txtState.Text;
        string acity = txtCity.Text;
        string azip = txtZIP.Text;
        string hphone = txtPhone.Text;
        string pref = txtDispName.Text;
        string username = txtUsername.Text;
        string passwd = txtPassword.Text;


        String sql = "insert into hosp_reg (hosp_name,number,Address,street,city,state,ZIP,hospital_phone," +
            "prefered_name,Username,Regdate) values('" + hname + "','" + num + "','" + address + "','" +  astreet + 
            "','" + acity + "','" + astate + "','" + azip + "','" + hphone + "','" +
            pref + "','" + username + "','" + DateTime.Now.ToString()+ "')";
        int x = dbe.putData(sql);
        sql = "insert into login values('" + username + "','" + passwd + "','hospital')";
        int y = dbe.putData(sql);
        if (x > 0 && y > 0)
        {
            Response.Redirect("index.aspx?id=regc");
        }
        else
        {
            lblErmsg.Text = "Registeration Failed";
        }
    }
   
}
