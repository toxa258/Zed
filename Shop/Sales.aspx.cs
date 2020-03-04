using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Warehouse.Models;
using Warehouse.Service;

namespace Shop
{
    public partial class Sales : System.Web.UI.Page
    {
        string connectionString;
        private object i;

        public object Quantity { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
        protected void Add_Click(object sender, EventArgs e)
        {
            var service = new BalanceProductService(connectionString);
            var product = new BalanceProduct();
            int id = Convert.ToInt32(i);
            product.Id = id;
            string d = Products.Text.ToString();
            string Name = d;
            product.Name = d;
            string q = Quantity1.Text.ToString();
            int quantity = Convert.ToInt32(q);
            product.Quantity = quantity;
            service.AddSales(id, quantity, Name);
            GridView2.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }
    }
}