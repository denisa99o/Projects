using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class page_01 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string connection = ConfigurationManager.ConnectionStrings["lag_1"].ConnectionString;   //ne ajuta sa facem legatura cu stringul din web.config
        using (SqlConnection sql_1 = new SqlConnection(connection))
        {
            string query = "Insert into Clienti(id_client,nume_client,prenume_client,telefon,limita_credit,email_client,data_nastere) values (@v1,@v2,@v3,@v4,@v5,@v6,@v7)";
            using (SqlCommand cmd = new SqlCommand(query))
            {
                //stabilim conexiunea
                cmd.Connection = sql_1;

                cmd.Parameters.AddWithValue("@v1", TextBox1.Text);
                cmd.Parameters.AddWithValue("@v2", TextBox2.Text);
                cmd.Parameters.AddWithValue("@v3", TextBox3.Text);
                cmd.Parameters.AddWithValue("@v4", TextBox4.Text);
                cmd.Parameters.AddWithValue("@v5", TextBox5.Text);
                cmd.Parameters.AddWithValue("@v6", TextBox6.Text);
                cmd.Parameters.AddWithValue("@v7", TextBox7.Text);

                sql_1.Open();
                cmd.ExecuteNonQuery();
                sql_1.Close();

            }
        }

        GridView1.DataBind();
    }
}