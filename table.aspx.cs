using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class table : System.Web.UI.Page
{
    static Int32 bookingid;
    static String startdate;
    static String enddate;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Calendar1.SelectedDate = DateTime.Now.Date;
        }


        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        startdate = Calendar1.SelectedDate.Year + "-" + Calendar1.SelectedDate.Month + "-" + Calendar1.SelectedDate.Day + " " + DropDownList1.Text;
        enddate = Calendar1.SelectedDate.Year + "-" + Calendar1.SelectedDate.Month + "-" + Calendar1.SelectedDate.Day + " " + DropDownList2.Text;
        // Response.Write(startdate);
        findAvailableTable();
        RadioButtonList1.Visible = true;
    }




    private void findAvailableTable()
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Gaurav\Desktop\Reasturant Mgm\App_Data\gaurav.mdf;Integrated Security=True");
        String myquery = "select DISTINCT tableno from Tabledetail where ((dtstart between '" + startdate + "' and '" + enddate + "' ) or (dtend between '" + startdate + "' and '" + enddate + "' ))";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            //RadioButtonList1.Items.Clear();
            Label1.Text = "Available Tables are Given Below";
            foreach (DataRow dr in ds.Tables[0].Rows)
            {


                RadioButtonList1.Items.Remove(RadioButtonList1.Items.FindByValue(dr["tableno"].ToString()));

            }
            if (RadioButtonList1.Items.Count == 0)
            {
                Label1.Text = "No Table Available to Book";
            }

        }
        else
        {
            Label1.Text = "Available Tables are Given Below";

        }
        con.Close();
    }



    public void GenerateBookingID()
    {
        SqlConnection scon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C: \Users\Gaurav\Desktop\Reasturant Mgm\App_Data\gaurav.mdf;Integrated Security=True");
        String myquery = "select bookingid from Tabledetail";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        scon.Close();
        if (ds.Tables[0].Rows.Count < 1)
        {
            bookingid = 50001;

        }
        else
        {


            SqlConnection scon1 = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C: \Users\Gaurav\Desktop\Reasturant Mgm\App_Data\gaurav.mdf;Integrated Security=True");

            String myquery1 = "select max(bookingid) from Tabledetail";
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = myquery1;
            cmd1.Connection = scon1;
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);


            bookingid = Convert.ToInt32(ds1.Tables[0].Rows[0][0].ToString());

            bookingid = bookingid + 1;
            scon1.Close();
        }

    }





    protected void Button2_Click(object sender, EventArgs e)
    {
        GenerateBookingID();
        string updatepass = "insert into Tabledetail(bookingid,tableno,customername,totalperson,dtstart,dtend) values(" + bookingid + ",'" + RadioButtonList1.SelectedItem.Text + "','" + TextBox1.Text + "'," + TextBox2.Text + ",'" + startdate + "','" + enddate + "')";
        SqlConnection s = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C: \Users\Gaurav\Desktop\Reasturant Mgm\App_Data\restaurant1.mdf;Integrated Security=True");
        s.Open();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = updatepass;
        cmd1.Connection = s;
        cmd1.ExecuteNonQuery();
        Label2.Text = "Booking ID " + bookingid + "   &nbsp &nbsp <br> " + RadioButtonList1.SelectedItem.Text + "   &nbsp " + " Has Been Booked From " + startdate + " to " + enddate;
    }

   
}

