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


public partial class doc_reg : System.Web.UI.Page
{
    DBExplorer dbe;

   
    protected void Page_Load(object sender, EventArgs e)
    {
        dbe=new DBExplorer(ConfigurationManager.ConnectionStrings["Fedora"].ConnectionString);
        dbe.OpenConnection();
        
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
       
        string dname = txtDocName.Text;
        string dob =Request.Form.Get("txtDOB");
        string addr_no = txtNum.Text;
        string street = txtStreet.Text;
        string city = txtCity.Text;
        string state = txtState.Text;
        string zip = txtZIP.Text;
        string con_from = txtConsult_from.Text;
        string con_to = txtConsult_to.Text;
        string onl_from = txtOnline_from.Text;
        string onl_to = txtOnline_to.Text;
        string qual = ddlQlfn.SelectedItem.ToString();
        string spec = ddlSpec.SelectedItem.ToString();
        string sex = "";
        string username = txtUsername.Text;
        string passwd = txt_password.Text;
        
        if (rdoFemale.Checked == true)
            {
                sex = "Female";
            }
            else if (rdoMale.Checked == true)
            {
                sex = "Male";
            }
            string mstatus = "";
            if (rdoMarried.Checked == true)
            {
                mstatus = "Married";
            }
            else if (rdoSingle.Checked == true)
            {
                mstatus = "single";
            }
            if (txt_password.Text == "" ||  txtAge.Text == "" || txtCity.Text == "" ||
                txtConsult_from.Text == "" || txtConsult_to.Text == "" || dob == "" ||txtDocName.Text == "" || 
                txtNum.Text == "" || txtOnline_from.Text == "" || txtOnline_to.Text == "" || txtPhone.Text == "" ||
                txtState.Text == "" || txtStreet.Text == "" || txtUsername.Text == "" || txtZIP.Text == "")
            {
                lblempty.Text = "Some required fields missing";
                return;
            }
            else
            {
                int age = Int32.Parse(txtAge.Text);
                String phone = txtPhone.Text;
                String sql = "insert into doc_reg (Doctor_name,age,Qualification,specialization,sex,DOB,maritalstatus,addr_number," +
                    "Street,city,state,Zip,phone,consult_from,consult_to,online_from,online_to,Username,Regdate) values('" +
                    dname + "'," + age + ",'" + qual + "','" + spec + "','" + sex + "','" + dob + "','" + mstatus + "','" + addr_no + "','" +
                    street + "','" + city + "','" + state + "','" + zip + "'," + phone + ",'" + con_from + "','" + 
                    con_to + "','" + onl_from + "','" + onl_to + "','" +  username + "','" + DateTime.Now.ToString() +  "')";
                int x = dbe.putData(sql);
                
                int y = dbe.putData("insert into login values('" + username + "','" + passwd + "','doctor')");
                if (x > 0 && y > 0)
                {
                    Response.Redirect("index.aspx?id=regc");
                }
                else
                {
                    lblErmsg.Text= "Registeration Failed";
                }
            }
        
    }

}