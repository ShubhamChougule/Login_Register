using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Login_Register
{
    public partial class registerPage : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True");        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(nametxt.Text != "" && emailtxt.Text != "" && passwordtxt.Text != "")
            {
                string ins = "Insert into [Table] (name, email, password) values('" + nametxt.Text + "' ,  '" + emailtxt.Text + "' , '" + passwordtxt.Text + "' )";
                SqlCommand cmd = new SqlCommand(ins, conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                error.Visible = true;
                error.Text = "User Registration Successfully completed !";
            } else
            {
                error.Visible = true;
                error.Text = "Fields can't be empty !!";
            }
            
        }
    }
}