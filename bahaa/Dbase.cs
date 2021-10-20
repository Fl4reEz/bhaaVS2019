using System;
using System.Data;
using System.Data.OleDb;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for Dbase
/// </summary>
public class Dbase
{
	public Dbase()
	{
		
	}

    public static OleDbConnection MakeConnection()
    {
        OleDbConnection c = new OleDbConnection();
        c.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/DB.accdb");
        c.Open();
        return c;
    }

    public static DataTable SelectFromTable(string strSql)
    {
        OleDbConnection c = MakeConnection();
        OleDbCommand comm = new OleDbCommand();
        comm.CommandText = strSql;
        comm.Connection = c;
        DataTable dt= new DataTable();
        OleDbDataAdapter da = new OleDbDataAdapter(comm);
        da.Fill(dt);
        c.Close();
        return dt;
    }

    public static void ChangeTable(string strSql)
    {
        OleDbConnection c = MakeConnection();
        OleDbCommand comm = new OleDbCommand();
        comm.CommandText = strSql;
        comm.Connection = c;
        comm.ExecuteNonQuery();
        c.Close();
    }
}
