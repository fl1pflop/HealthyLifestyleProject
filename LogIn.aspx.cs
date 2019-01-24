using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace $safeprojectname$
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.ToolTip = "Введите логин";
            TextBox2.ToolTip = "Введите пароль";
            Label3.Text = "";
        }

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        SqlCommand com = new SqlCommand();
        DataSet1 data = new DataSet1();

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (TextBox1.Text == "Admin" && TextBox2.Text == "Admin")
                {
                    Response.Redirect("Admin.aspx");
                }
                //Кнопка Войти
                com.CommandText = "Select * From login where login=' " + TextBox1.Text + " ' and password=' " + TextBox2.Text + " ' ";
                com.Connection = con;
                con.Open();
                SqlDataAdapter adp = new SqlDataAdapter(com.CommandText, con);
                adp.Fill(data, "login");
                var rowCount = data.Tables["login"].Rows.Count;

                if (rowCount > 0)
                {
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    Response.Redirect("WebForm1.aspx");
                }
                else
                {
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    Label3.Text = " Не верный пароль!";
                }
            }

            finally
            {
                con.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Кнопка Отправить
            com.CommandText = "";
            SqlDataAdapter adp = new SqlDataAdapter(com.CommandText, con);
            Random rnd = new Random();
            data.EnforceConstraints = false;

            try
            {
                com.CommandText = "Insert Into login (Id, login, password) values (' " + rnd.Next(0, 1000000) + " ',' " + TextBox1.Text + " ', ' " + TextBox2.Text + " ')";
                com.Connection = con;
                con.Open();
                com.ExecuteNonQuery();
                Label3.Text = "Вы зарегистрировались!";
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
            finally
            {
                con.Close();
            }
        }
    }
}