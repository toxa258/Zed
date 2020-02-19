using System;
using System.Data.SqlClient;




namespace ConsoleApp11
{
    class Program
    {

        static void Main(string[] args)
        {

            string connStr = @"Data Source=DESKTOP-IM096BK\SQLEXPRESS;Initial Catalog=Магазин; Integrated Security=True";
            var conn = new SqlConnection(connStr);
            conn.Open();
            
            var cmd = new SqlCommand("select * from dbo.Поставка", conn);
            var reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                Console.WriteLine("Дата поступления ");
            }

            conn.Close();

            Console.Read();
        }
    }
}
