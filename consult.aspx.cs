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

public partial class consult : System.Web.UI.Page
{
    DBExplorer dbe;
    protected void Page_Load(object sender, EventArgs e)
    {
        dbe = new DBExplorer(ConfigurationManager.ConnectionStrings["Fedora"].ConnectionString);
        dbe.OpenConnection();
    }
    protected void btnPost_Click(object sender, EventArgs e)
    {
        String sql = "Insert into ConsultInfo (Name,Email,Description,CDate ) values('" + txtName.Text +
            "','" + txtEmail.Text + "','" + txtDesc.Text + "','" + DateTime.Now.ToShortDateString()+ "')";
        int x=dbe.putData(sql);
        if (x > 0)
        {
            lblmsg.Text = "Your question posted successfully";
            txtDesc.Text = "";
            txtEmail.Text = "";
            txtName.Text = "";

        }
        else
        {
            lblmsg.Text = "Error on posting question";
        }

    }
}
