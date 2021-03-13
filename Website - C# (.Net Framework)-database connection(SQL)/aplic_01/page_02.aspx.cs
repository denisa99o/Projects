using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Services;

public partial class page_02 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string v1,v2,v3,v4,v5;
        SqlConnection connection = new SqlConnection (ConfigurationManager.ConnectionStrings["lag_1"].ConnectionString);   //ne ajuta sa facem legatura cu stringul din web.config
       SqlCommand cmd =new SqlCommand("proc_view",connection);
         cmd.CommandType=CommandType.StoredProcedure;
         cmd.Parameters.Add("@name",SqlDbType.VarChar,50);
        cmd.Parameters.Add("@a1", SqlDbType.VarChar,50).Direction=ParameterDirection.Output;
        cmd.Parameters.Add("@a2", SqlDbType.VarChar,50).Direction=ParameterDirection.Output;
        cmd.Parameters.Add("@a3", SqlDbType.Float).Direction=ParameterDirection.Output;
        cmd.Parameters.Add("@a4", SqlDbType.Float).Direction=ParameterDirection.Output;
        cmd.Parameters.Add("@a5", SqlDbType.Float).Direction=ParameterDirection.Output;
        cmd.Parameters["@name"].Value=DropDownList1.Text;
        
        connection.Open();
        cmd.ExecuteNonQuery();
        v1=Convert.ToString(cmd.Parameters["@a1"].Value);
        v2=Convert.ToString(cmd.Parameters["@a2"].Value);
        v3=Convert.ToString(cmd.Parameters["@a3"].Value);
        v4=Convert.ToString(cmd.Parameters["@a4"].Value);
        v5=Convert.ToString(cmd.Parameters["@a5"].Value);
        connection.Close();
        TextBox2.Text=v1;
        TextBox3.Text=v2;
        TextBox4.Text=v3;
        TextBox5.Text=v4;
        TextBox6.Text=v5;
       
        }

    protected void Button3_Click(object sender, EventArgs e)
    {
       
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["lag_1"].ConnectionString);   //ne ajuta sa facem legatura cu stringul din web.config
        SqlCommand cmd = new SqlCommand("proc_insert", connection);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@cod_art", SqlDbType.Int).Value=cod_art.Text.ToString();
        cmd.Parameters.Add("@name", SqlDbType.VarChar, 100).Value=denumire.Text.ToString();
        cmd.Parameters.Add("@tip_produs", SqlDbType.VarChar,100).Value=tip_produs_par.Text.ToString();
       

        try
        {
            connection.Open();
            cmd.ExecuteNonQuery();
            message.Text = "Date inserate cu succes";
        }
        catch (Exception ex)
        {
           throw ex;
        }

        finally
        {
            connection.Close();
            connection.Dispose();
        }
        GridView1.DataBind();
        GridView2.DataBind();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["lag_1"].ConnectionString);   //ne ajuta sa facem legatura cu stringul din web.config
        SqlCommand cmd = new SqlCommand("proc_delete", connection);
        cmd.CommandType = CommandType.StoredProcedure;

           cmd.Parameters.Add("@cod_art",SqlDbType.Int);
            
            cmd.Parameters["@cod_art"].Value=TextBox7.Text;
            connection.Open();

            cmd.ExecuteNonQuery();

            connection.Close();
            MessageBox.Text="Produs eliminat din catalog";
            GridView1.DataBind();
            GridView2.DataBind();
    }
   
   
}