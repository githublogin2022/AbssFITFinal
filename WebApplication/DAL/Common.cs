using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Text;

/// <summary>
/// Summary description for Common
/// </summary>
public class Common
{
    public static string con = ConfigurationManager.ConnectionStrings["constring"].ToString();
    static SqlConnection conn = new SqlConnection(con);
    
    public static DataTable GetData(String query)
    {
        if (conn.State != ConnectionState.Open)
        conn.Open();
        SqlDataAdapter da = new SqlDataAdapter(query, conn);
        DataTable dst = new DataTable();
        da.Fill(dst);
        conn.Close();
        return dst;
    }


    public static DataSet GetDataSet(String query)
    {
        if (conn.State != ConnectionState.Open)
            conn.Open();
        SqlDataAdapter da = new SqlDataAdapter(query, conn);
        DataSet dst = new DataSet();
        da.Fill(dst);
        conn.Close();
        return dst;
    }

    public static string GetResultString(string query)
    {
        string returnValue = "";
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        SqlDataReader dr = null;
        SqlConnection con = conn;
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = query;
        if (con.State != ConnectionState.Open)
        con.Open();
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            returnValue = dr[0].ToString();
        }
        dr.Close();
        con.Close();
        return returnValue;
    }

    public static string GetDBDate(string displayDate)
    {
        string FinalDate = "";
        string[] datepart = displayDate.Split('/');
        if (datepart.Length > 2)
        {
            FinalDate = datepart[1].ToString() + "/" + datepart[0].ToString() + "/" + datepart[2].ToString();
        }
        return FinalDate;
    }

    public static void ExecuteQuery(string q)
    {
        using (SqlConnection con = new SqlConnection(Common.con))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(q, con);
            //cmd.Parameters.AddWithValue("@Name", "Suresh Dasari");
            //cmd.Parameters.AddWithValue("@FName", "Suresh");
            //cmd.Parameters.AddWithValue("@LName", "D");
            //cmd.Parameters.AddWithValue("@Location", "Chennai");
            int result = cmd.ExecuteNonQuery();
            if (result >= 1)
            {
                
            }
            else
            {
                
            }
            con.Close();
        }
    }

    public static void ExecuteQueryWithParameters(string q, SqlParameterCollection param)
    {
        using (SqlConnection con = new SqlConnection(Common.con))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(q, con);
            //cmd.Parameters.AddWithValue("@Name", "Suresh Dasari");
            //cmd.Parameters.AddWithValue("@FName", "Suresh");
            //cmd.Parameters.AddWithValue("@LName", "D");
            //cmd.Parameters.AddWithValue("@Location", "Chennai");
            cmd.Parameters.Add(param);
            int result = cmd.ExecuteNonQuery();
            if (result >= 1)
            {

            }
            else
            {

            }
            con.Close();
        }
    }


    public static void ExecuteQueryWithTransaction(string q,string q1,string q2, string q3)
    {
        
        
        using (SqlConnection con = new SqlConnection(Common.con))
        {
            con.Open();
            SqlTransaction trans = null;
            trans = con.BeginTransaction();
            SqlCommand cmd = new SqlCommand(q, con,trans);
            SqlCommand cmd1 = new SqlCommand(q1, con,trans);
            SqlCommand cmd2 = new SqlCommand(q2, con,trans);
            SqlCommand cmd3 = new SqlCommand(q3, con, trans);
            try
            {
                if(!String.IsNullOrEmpty(q))
                     cmd.ExecuteNonQuery();
                if (!String.IsNullOrEmpty(q1))
                     cmd1.ExecuteNonQuery();
                if (!String.IsNullOrEmpty(q2))
                    cmd2.ExecuteNonQuery();
                if (!String.IsNullOrEmpty(q3))
                    cmd3.ExecuteNonQuery();
                trans.Commit();

            }
            catch (Exception ex)
            {
                trans.Rollback();
            }
            finally
            {
                con.Close();
            }
        }
       
    }


    public static string RandomPassword()
    {
        StringBuilder builder = new StringBuilder();
        builder.Append(RandomString(4, true));
        builder.Append(RandomNumber());
        builder.Append(RandomString(2, false));
        return builder.ToString();
    }

    public static string RandomString(int size, bool lowerCase)
    {
        StringBuilder builder = new StringBuilder();
        Random random = new Random();
        char ch;
        for (int i = 0; i < size; i++)
        {
            ch = Convert.ToChar(Convert.ToInt32(Math.Floor(26 * random.NextDouble() + 65)));
            builder.Append(ch);
        }
        if (lowerCase)
            return builder.ToString().ToLower();
        return builder.ToString();
    }

    public static int RandomNumber()
    {
        // Generate a random number  
        Random random = new Random(3);
        // Any random integer   
        int num = random.Next();

        return num;
    }
}