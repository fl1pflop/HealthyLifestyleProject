using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace $safeprojectname$
{
    public partial class BJU_products : System.Web.UI.Page
    {
        DataClasses1DataContext data = new DataClasses1DataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            //string script = "return confirm('Вы уверены?');";
            //Button1.Attributes.Add("onclick", script);
        }

        protected IEnumerable<bju_items> GetData()
        {
            var row = (from line in data.bju_items select line).ToArray();
            return row;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            DataClasses1DataContext db = new DataClasses1DataContext();

            bju_items table = new bju_items();

            var name = TextBox1.Text;
            var b = decimal.Parse(TextBox2.Text);
            var j = decimal.Parse(TextBox3.Text);
            var u = decimal.Parse(TextBox4.Text);
            var kal = int.Parse(TextBox5.Text);

            string command = String.Format("INSERT INTO bju VALUES({0},{1},{2},{3},{4})", name, b, j, u, kal);
            db.ExecuteCommand(command);

            Response.Redirect("/BJU_products.aspx");



        }
    }
}