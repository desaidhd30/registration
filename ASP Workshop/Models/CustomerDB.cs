using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace registration
{
    [DataObject(true)]
    public static class CustomerDB
    {
        //shows customer
        [DataObjectMethod(DataObjectMethodType.Select)]
        public static Customer GetCustomer()
        {
           Customer cust = null; 
            // Build connection
            SqlConnection con = TravelexpertsDB.GetConnection();

            // building query
            string Query = "select * from Customers Order By CustFirstName ";
                                 
            SqlCommand selectCommand = new SqlCommand(Query, con);
            //selectCommand.Parameters.AddWithValue("@CustomerID", customerID);
            try
            {
                // open the connection
                con.Open();

                // execute the query
                SqlDataReader reader = selectCommand.ExecuteReader(CommandBehavior.SingleRow);

                // process the result if any
                if (reader.Read()) // if there is customer
                {
                    cust = new Customer();

                    cust.Firstname= reader["CustFirstName"].ToString();
                    cust.lastname = reader["CustLastname"].ToString();
                   
                    cust.UserId= reader["UserId"].ToString();
                    cust.Password= reader["Password"].ToString();
                    cust.Confirmpassword = reader["ConfirmPassword"].ToString();
                    cust.Address = reader["CustAddress"].ToString();
                    cust.City = reader["CustCity"].ToString();
                    cust.Province = reader["CustProv"].ToString();
                    cust.Postalcode = reader["CustPostal"].ToString();
                    cust.Country = reader["CustCountry"].ToString();
                    cust.Homephone = reader["CustHomePhone"].ToString();
                    cust.Busphone = reader["CustBusPhone"].ToString();
                    cust.email = reader["CustEmail"].ToString();
                }
            }
            catch (Exception ex)
            {
                throw ex; // throw exception if it has
            }
            finally
            {
                con.Close(); // closes connectoion
            }

            return cust;
        }

       


        // inserting new customer record
        [DataObjectMethod(DataObjectMethodType.Insert)]
        public static bool AddCustomer(Customer cust) // returns generated customer id
        {
            bool flag = false;
          
            // Build connection
            SqlConnection con = TravelexpertsDB.GetConnection();

            // Build query
            string insertStringQuery = "insert into Customers " +
                                  "(FirstName,lastname,UserId,Password,Confirmpassword,Address,City,Province,PostalCode,Country,HomePhone,Busphone,Email) " +
                                  "values(@FirstName,@lastname,@UserId,@Password,@Confirmpassword @Address,@City,@Province, @Postalcode,@Country,@Homephone,@Busphone,@Email)";
            SqlCommand insertCommand = new SqlCommand(insertStringQuery, con);
            insertCommand.Parameters.AddWithValue("@FirstName", cust.Firstname);
            insertCommand.Parameters.AddWithValue("@LastName", cust.lastname);
            insertCommand.Parameters.AddWithValue("@UserId", cust.UserId);
            insertCommand.Parameters.AddWithValue("@Password", cust.Password);
            insertCommand.Parameters.AddWithValue("@ConfirmPasswors", cust.Confirmpassword);
            insertCommand.Parameters.AddWithValue("@City", cust.City);
            insertCommand.Parameters.AddWithValue("@Province", cust.Province);
            insertCommand.Parameters.AddWithValue("@PostalCode", cust.Postalcode);
            insertCommand.Parameters.AddWithValue("@Country", cust.Country);
            insertCommand.Parameters.AddWithValue("@HomePhone", cust.Homephone);
            insertCommand.Parameters.AddWithValue("@BusPhone", cust.Busphone);
            insertCommand.Parameters.AddWithValue("@Email", cust.email);

            try
            {
                // open connection
                con.Open();

                // execute the statement
                int i = insertCommand.ExecuteNonQuery();
                if (i == 1) // one record inserted
                {
                    flag = true;
                }
            }
            catch (Exception ex)
            {
                throw ex; // pass the buck
            }
            finally
            {
                con.Close();
            }
            return flag;
        }

        // updates existing customer record and returns bool success flag
        [DataObjectMethod(DataObjectMethodType.Update)]
        public static bool UpdateCustomer(Customer customer, Customer oldcustomer)
        {
            bool successful = false;
            SqlConnection con = TravelexpertsDB.GetConnection();
            string updateStringQuery = "update Customers set " +
                                  "FirstName = @NewFirstName, " +
                                   "LastName = @NewLastName, " +
                                    "UserId = @NewUserId, " +
                                     "Password = @NewPassword, " +
                                      "ConfirmPassword = @NewConfirmPassword, " +
                                  "Address = @NewAddress, " +
                                  "City = @NewCity, " +
                                  "Province = @NewProvince," +
                                  "PostalCode = @NewpostalCode " +
                                   "Country = @NewCountry, " +
                                    "Homephone = @Newhomephone, " +
                                     "Busphone = @NewBusPhone, " +
                                     "Email=@NewEmail,"+
                                  "where " +
                                  "FirstName  = @OldFirstName and " +
                                   "LastName  = @OldLastName and " +
                                    "UserId  = @OldUserId and " +
                                     "Password  = @OldPassword and " +
                                      "ConfirmPassword  = @OldConfirmPassword and " +
                                  "Address = @OldAddress and " +
                                  "City = @OldCity and " +
                                  "Province = @OldProvince and " +
                                  "PostalCode = @OldPostalCode and "+
                                    "Country  = @OldCountry and " +
                                     "Homephone  = @OldHomephone and " +
                                      "BusPhone  = @OldBusphone and " +
                                       "Email  = @OldEmail";
SqlCommand updateCommand = new SqlCommand(updateStringQuery, con);
            updateCommand.Parameters.AddWithValue("@OldFirstName", oldcustomer.Firstname);
            updateCommand.Parameters.AddWithValue("@OldLastName", oldcustomer.lastname);
            updateCommand.Parameters.AddWithValue("@OldUserId", oldcustomer.UserId);
            updateCommand.Parameters.AddWithValue("@OldPassword", oldcustomer.Password);
            updateCommand.Parameters.AddWithValue("@OldConfirmpassword", oldcustomer.Confirmpassword);
            updateCommand.Parameters.AddWithValue("@OldAddresss", oldcustomer.Address);
            updateCommand.Parameters.AddWithValue("@OldCity", oldcustomer.City);
            updateCommand.Parameters.AddWithValue("@OldProvince", oldcustomer.Province);
            updateCommand.Parameters.AddWithValue("@OldpostalCode", oldcustomer.Postalcode);
            updateCommand.Parameters.AddWithValue("@OldCountry", oldcustomer.Country);
            updateCommand.Parameters.AddWithValue("@OldHomephone", oldcustomer.Homephone);
            updateCommand.Parameters.AddWithValue("@OldBusphone ", oldcustomer.Busphone);
            updateCommand.Parameters.AddWithValue("@oldEmail", oldcustomer.email);
            updateCommand.Parameters.AddWithValue("@NeFirstwName", customer.Firstname);
            updateCommand.Parameters.AddWithValue("@NewlastName", customer.lastname);
            updateCommand.Parameters.AddWithValue("@NewUserId", customer.UserId);
            updateCommand.Parameters.AddWithValue("@NewPassword", customer.Password);
            updateCommand.Parameters.AddWithValue("@NewConfirmPassword", customer.Confirmpassword);
            updateCommand.Parameters.AddWithValue("@NewAddress", customer.Address);
            updateCommand.Parameters.AddWithValue("@NewCity", customer.City);
            updateCommand.Parameters.AddWithValue("@NewProvince", customer.Province);
            updateCommand.Parameters.AddWithValue("@NewPostalCode", customer.Postalcode);
            updateCommand.Parameters.AddWithValue("@NewCountry", customer.Country);
            updateCommand.Parameters.AddWithValue("@NewHomephone", customer.Homephone);
            updateCommand.Parameters.AddWithValue("@NewBusphone", customer.Busphone);
            updateCommand.Parameters.AddWithValue("@NewEmail", customer.email);

            try
            {
                con.Open();
                int count = updateCommand.ExecuteNonQuery();
                if (count == 1)
                    successful = true;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                //connection.Close();
            }
            return successful;
        }

        // Delete operation returns bool success flag
        [DataObjectMethod(DataObjectMethodType.Delete)]
        static public bool DeleteCustomer(Customer customer)
        {
            bool status = false;

            SqlConnection con = TravelexpertsDB.GetConnection();
            string deleteStringQuery = "delete from Customers " +
                                  "where " +
                                 "FirstName = @FirstName, " +
                                   "LastName = @LastName, " +
                                    "UserId = @UserId, " +
                                     "Password = @Password, " +
                                      "ConfirmPassword = @ConfirmPassword, " +
                                  "Address = @Address, " +
                                  "City = @City, " +
                                  "Province = @Province," +
                                  "PostalCode = @postalCode " +
                                   "Country = @Country, " +
                                    "Homephone = @homephone, " +
                                     "Busphone = @BusPhone, " +
                                     "Email=@Email";
            SqlCommand deleteCommand = new SqlCommand(deleteStringQuery, con);
            deleteCommand.Parameters.AddWithValue("@FirstName", customer.Firstname);
            deleteCommand.Parameters.AddWithValue(" @LastName", customer.lastname);
            deleteCommand.Parameters.AddWithValue(" @UserId", customer.UserId);
            deleteCommand.Parameters.AddWithValue("@Password", customer.Password);
            deleteCommand.Parameters.AddWithValue("@ConfirmPassword", customer.Confirmpassword);
            deleteCommand.Parameters.AddWithValue("@Address", customer.Address);
            deleteCommand.Parameters.AddWithValue("@City", customer.City);
            deleteCommand.Parameters.AddWithValue("@Province", customer.Province);
            deleteCommand.Parameters.AddWithValue("@PostalCode", customer.Postalcode);
            deleteCommand.Parameters.AddWithValue("@Country", customer.Country);
            deleteCommand.Parameters.AddWithValue("@Homephone", customer.Homephone);
            deleteCommand.Parameters.AddWithValue("@Busphone", customer.Busphone);
            deleteCommand.Parameters.AddWithValue("@Email", customer.email);

            try
            {
                con.Open();
                int count = deleteCommand.ExecuteNonQuery();
                if (count == 1)
                {
                    status = true;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
            return status;
        }

    } // end class
} // end namespace
