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

public partial class bloodreg : System.Web.UI.Page
{
    DBExplorer dbe;
         
    protected void Page_Load(object sender, EventArgs e)
    {
        dbe=new DBExplorer(ConfigurationManager.ConnectionStrings["Fedora"].ConnectionString);
        dbe.OpenConnection();
        if (!IsPostBack)
        {
            for (int i = 18; i <= 60; i++)
            {
                ddlAge.Items.Add(i.ToString());
            }
        }
    }

    protected void btnRegister_Click(object sender, ImageClickEventArgs e)
    {
        if (ddlDistrict.Text == "--Select--")
        {
            lblDistMsg.Text = "Select a district";
            return;
        }else{
            lblDistMsg.Text = "";
        }
        if (ddlState.Text == "--Select--")
        {
            lblStateMsg.Text = "Select a state";
            return;
        }
        else
        {
            lblStateMsg.Text = "";
        }
        if (ddlBloodGroup.Text == "--Select--")
        {
            lblBgMSg.Text = "Select a blood group";
            return;
        }
        else
        {
            lblBgMSg.Text = "";
        }
        String dname = txtName.Text;
        String sex = ddlSex.Text;
        int age = Int32.Parse(ddlAge.Text);
        String dobStr= Request.Form.Get("txtDOB").ToString();
        String add1 = txtAddress1.Text;
        String add2 = txtAddress2.Text;
        String dist = ddlDistrict.Text;
        String state = ddlState.Text;
        String phone = txtPhone.Text;
        String mobile = txtMobile.Text;
        String bloodgrp = ddlBloodGroup.SelectedValue;
        String sql = "Insert into BloodDonation (DonorName, Sex,Age,DOB,Address1,Address2,District,State,Phone,Mobile," +
            "BloodGroup) values('" + dname + "','" + sex + "'," + age + ",'" + dobStr + "','" + add1 + "','" + add2 + "','" + dist +
            "','" + state + "','" + phone + "','" + mobile + "','" + bloodgrp + "')";
        int x=dbe.putData(sql);
        if (x > 0)
        {
            //lblMsg.Text = "You have registered successfully";
            Response.Redirect("index.aspx?id=regc");
        }
    }
}
