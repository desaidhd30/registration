using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace registration
{
  
    public partial class simple : System.Web.UI.Page
    {
        public Customer customer;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            customer = CustomerDB.GetCustomer();
            Displaycustomer();

            txtFirstName.Focus();
            
        }
        private void Displaycustomer()
        {
            txtFirstName.Text = customer.Firstname;
            txtLastName.Text = customer.lastname;
            TxtUserId.Text = customer.UserId;
            TxtPassword.Text = customer.Password;
            TxtConfimpass.Text = customer.Confirmpassword;
            txtAdd.Text = customer.Address;
            txtCity.Text = customer.City;
            txtProvince.Text = customer.Province;
            txtPostalcode.Text = customer.Postalcode;
            txtCountry.Text = customer.Country;
            txtHomePhone.Text = customer.Homephone;
            txtBusphone.Text = customer.Busphone;
            txtEmail.Text = customer.email;
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtFirstName.Text = " ";
            txtLastName.Text = " ";
            txtAdd.Text = " ";
            txtCity.Text = " ";
            txtProvince.Text = " ";
            txtPostalcode.Text = " ";
            txtCountry.Text = " ";
            txtHomePhone.Text = " ";
            txtBusphone.Text = " ";
            TxtPassword.Text = " ";
            TxtConfimpass.Text = " ";
            TxtUserId.Text = " ";
            txtEmail.Text = " ";
            lblmsg.Text = " ";
            //  Page.Response.Redirect(Page.Request.Url.ToString(), true);
            txtFirstName.Focus();
        }
        
        protected void btnSave_Click(object sender, EventArgs e)
        {
            lblmsg.Text = "";
            SqlConnection con = new SqlConnection(
         "Data Source=(LocalDB)\\MSSQLLocalDB;" +
                "AttachDbFilename=|DataDirectory|\\TravelExperts.mdf;" +
                "Integrated Security=True;Connect Timeout=30");
            SqlCommand cmd = new SqlCommand("insert into Customers " +
                                  "(CustFirstName,Custlastname,UserId,Password,Confirmpassword,CustAddress,CustCity,CustProv,CustPostal,CustCountry,CustHomePhone,CustBusphone,CustEmail) " +
                                  "values(@FirstName,@lastname,@UserId,@Password,@Confirmpassword @Address,@City,@Province, @Postalcode,@Country,@Homephone,@Busphone,@Email)", con);
           // cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("CustFirstName", txtFirstName.Text);
            cmd.Parameters.AddWithValue("CustLastName", txtLastName.Text);
            cmd.Parameters.AddWithValue("CustEmail", txtEmail.Text);
            cmd.Parameters.AddWithValue("CustBusphone", txtBusphone.Text);
            cmd.Parameters.AddWithValue("CustAddress", txtAdd.Text);
            cmd.Parameters.AddWithValue("CustUserId", TxtUserId.Text);
            cmd.Parameters.AddWithValue("Password", TxtPassword.Text);
            cmd.Parameters.AddWithValue("ConfirmPassword", TxtConfimpass.Text);
            cmd.Parameters.AddWithValue("CustCity", txtCity.Text);
            cmd.Parameters.AddWithValue("CustProv", txtProvince.Text);
            cmd.Parameters.AddWithValue("CustCountry", txtCountry.Text);
            cmd.Parameters.AddWithValue("CustHomephone", txtHomePhone.Text);
            



            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Customer Information Saved Successfully!!";
        }

      
    }
}