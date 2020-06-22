using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sign_up : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        string InsertQuery = "insert into signup values(@fname,@email,@contact,@password,@state,@city,@pincode,@address)";
        SqlCommand cmd = new SqlCommand(InsertQuery, con);
        cmd.Parameters.AddWithValue("@fname", TextBox3.Text);
        cmd.Parameters.AddWithValue("@email", TextBox4.Text);
        cmd.Parameters.AddWithValue("@contact", TextBox5.Text);
        cmd.Parameters.AddWithValue("@password", TextBox6.Text);
        cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedValue);
        cmd.Parameters.AddWithValue("@city", DropDownList2.SelectedValue);
        cmd.Parameters.AddWithValue("@pincode", TextBox9.Text);
        cmd.Parameters.AddWithValue("@address", TextBox1.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('REGISTRATION SUCCESSFUL');", true);

        con.Close();
    }
}