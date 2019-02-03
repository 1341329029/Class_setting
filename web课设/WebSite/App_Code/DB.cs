using System.Configuration;
using System.Data.SqlClient;

/// <summary>
///   DB 的摘要说明
/// </summary>
public class DB
{
    public static SqlConnection createDB()

    {

        return new SqlConnection("server=.;database=db_Discuss;uid=sa;pwd=123456");
    }
}