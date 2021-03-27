using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace RentACarBuy
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Your data has been successfully send! You will receive an email with more informations");
        }

        private void Form2_Load(object sender, EventArgs e)
        {
            comboBox1.Items.Add("Cluj");
            comboBox1.Items.Add("Zalau");
            comboBox1.Items.Add("Oradea");
            comboBox1.Items.Add("Constanta");

            comboBox3.Items.Add("VW");
            comboBox3.Items.Add("Skoda");
            comboBox3.Items.Add("Mercedes");
            comboBox3.Items.Add("Audi");
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            listBox1.Items.Add(comboBox1.SelectedItem);
        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {
            
            listBox1.Items.Add(dateTimePicker1.Value.ToString("MM'/'dd'/'yyyy"));
        }

        private void comboBox3_SelectedIndexChanged(object sender, EventArgs e)
        {
            listBox1.Items.Add(comboBox3.SelectedItem);
        }
    }
}
