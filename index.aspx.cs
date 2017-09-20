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

public partial class index : System.Web.UI.Page
{
    DBExplorer dbe;

    protected void Page_Load(object sender, EventArgs e)
    {
        dbe = new DBExplorer(ConfigurationManager.ConnectionStrings["sample"].ConnectionString);
        dbe.OpenConnection();
    }


    protected void btnSearch_Click(object sender, ImageClickEventArgs e)
    {
        String bg,dist;
        if (ddlBloodGroup.Text == "--Select--")
        {
            lblBSearchmsg.Text = "Select blood Group";
            return;
        }
        else
        {
            lblBSearchmsg.Text = "";
            bg=ddlBloodGroup.Text;
        }
        if (ddlDistrict.Text == "--Select--")
        {
            dist="any";
        }
        else
        {
            dist = ddlDistrict.SelectedValue;
        }
        Response.Redirect("bsearchresult.aspx?grp=" + bg + "&dist=" + dist);
    }


    protected void btnLogin_Click(object sender, ImageClickEventArgs e)
    {
        if (rdoDoctor.Checked == true)
        {
            String sql = "select * from login where username='" + txtUname.Text +
                "' and password='" + txtPasswd.Text + "' and type='doctor'";
            DataSet ds = dbe.getData(sql);
            if (ds.Tables[0].Rows.Count > 0)
            {                
                Session["userid"] = txtUname.Text;
                Session["usertype"] = "Doctor";
                Response.Redirect("dochome.aspx");
            }
            else
            {
                lblLoginMsg.Text = "Invalid username/password";
            }
        }
        else if(rdoHospital.Checked==true)
        {
            String sql = "select * from login where username='" + txtUname.Text +
                "' and password='" + txtPasswd.Text + "' and type='hospital'";
            DataSet ds = dbe.getData(sql);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["userid"] = txtUname.Text;
                Session["usertype"] = "Hospital";
                Response.Redirect("hosphome.aspx");
            }
            else
            {
                lblLoginMsg.Text = "Invalid username/password";
            }
        }
    }

    protected void btnAmbSearch_Click(object sender, ImageClickEventArgs e)
    {
        if (ddlDist.Text == "--Select--")
        {
            Response.Redirect("ambsearch.aspx?id=any");
        }
        else
        {
            Response.Redirect("ambsearch.aspx?id=" + ddlDist.SelectedValue);
        }
    }
}
