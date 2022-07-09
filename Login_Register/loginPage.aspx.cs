using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Login_Register
{
    public partial class loginPage : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True");


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            error.Visible = false;
            string check = "Select count(*) from [Table] WHERE email = '" + emailtxt.Text + "' and  password = '" + passwordtxt.Text + "';";
            SqlCommand cmd = new SqlCommand(check, conn);
            conn.Open();

            int temp = Convert.ToInt16(cmd.ExecuteScalar().ToString());

            if ( temp > 0)
            {
                string Getname = "select name from [Table] WHERE email = '" + emailtxt.Text + "' ;";
                SqlCommand cmd2 = new SqlCommand(Getname, conn);
                Session["user"] = Convert.ToString(cmd2.ExecuteScalar());
                Response.Redirect("homepage.aspx");
            } else
            {
                error.Visible = true;
                error.Text = "UserEmail or Password is Invalid !!";
            }
        }
    }
}