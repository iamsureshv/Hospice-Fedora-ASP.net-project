using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public class DBExplorer
    {
        #region  Declarations
        public String ConnectionString = null;
        private SqlConnection con=null;
        private SqlCommand cmd = null;
        private SqlDataAdapter da = null;
        #endregion
        
        #region Constructors
        public DBExplorer(String conStr)
        {
            ConnectionString = conStr;
        }
        public DBExplorer()
        {              
        }
        #endregion

        #region Methods
        public void OpenConnection()
        {
            if (ConnectionString == null)
                throw new Exception("Connection String not set");
            else
            {
                try
                {
                    con = new SqlConnection(ConnectionString);
                    con.Open();

                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.ToString());
                    throw new Exception("Unable to connect, Check the connectionstring");
                }
            }
        }
        public SqlConnection getConnection()
        {
            return con;
        }
        public DataSet getData(String strSql)
        {
            if (con.State == ConnectionState.Closed)
            {
                throw new Exception("Connection not opened");
            }
            else
            {
                da = new SqlDataAdapter(strSql,con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
        }
        public int putData(String strSql)
        {
            if (con.State == ConnectionState.Closed)
            {
                throw new Exception("Connection not opened");
            }
            else
            {
                cmd = new SqlCommand(strSql, con);
                int retval=cmd.ExecuteNonQuery();
                return retval;
            }
        }
        #endregion
}
