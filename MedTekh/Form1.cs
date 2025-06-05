using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MedTekh
{
    public partial class Form1 : Form
    {
        private string connectionString = @"Data Source = 10.193.168.164; Initial Catalog = BL20; User ID = student; Password=1234";
        public Form1()
        {
            InitializeComponent();
            FormatTable();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }
        private void FormatTable()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {

                {
                    connection.Open();

                    string query = "SELECT * FROM Clients_import$";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                Panel panel = new Panel
                                {
                                    Width = 1000,
                                    Height = 70,
                                    BorderStyle = BorderStyle.FixedSingle,
                                    BackColor = Color.Gray
                                };


                                Label label2 = new Label
                                {
                                    Text = reader["TipKlienta"].ToString(),
                                    AutoSize = true,
                                    Left = 620,
                                    Top = 5,
                                    ForeColor = Color.White,
                                    Font = new Font("Segou UI", 10, FontStyle.Bold)
                                };
                                Label label3 = new Label
                                {
                                    Text = reader["FIOClienta"].ToString(),
                                    AutoSize = true,
                                    Left = 10,
                                    Top = 5,
                                    ForeColor = Color.White,
                                    Font = new Font("Segou UI", 10, FontStyle.Bold)
                                };
                                Label label4 = new Label
                                {
                                    Text = reader["KontactnieDannie"].ToString(),
                                    AutoSize = true,
                                    Left = 10,
                                    Top = 25,
                                    ForeColor = Color.White,
                                    Font = new Font("Segou UI", 10, FontStyle.Bold)
                                };
                                panel.Controls.Add(label2);
                                panel.Controls.Add(label3);
                                panel.Controls.Add(label4);
                                flowLayoutPanel1.Controls.Add(panel);
                            }

                        }
                    }
                }
            }

        }
    }
}
