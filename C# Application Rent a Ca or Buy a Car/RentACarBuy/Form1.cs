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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void button4_Click(object sender, EventArgs e)
        {
           
            
            if (!string.IsNullOrEmpty(textBox1.Text) && !string.IsNullOrEmpty(textBox2.Text) && !string.IsNullOrEmpty(textBox3.Text))
                    MessageBox.Show("Hello," + textBox1.Text + "!  Thank you for signing up. Your personal data are: name:" + textBox1.Text + ", email: " + textBox2.Text + ", phone: " + textBox3.Text);
            else
            {
                MessageBox.Show("Please enter all the required data");
            }
        
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form2 secondform = new Form2();
            secondform.Show(); 
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Form3 thirdform = new Form3();
            thirdform.Show();
        }

        private void clujToolStripMenuItem_Click(object sender, EventArgs e)
        {
            pictureBox5.ImageLocation = "cluj.jpg";
            pictureBox5.SizeMode = PictureBoxSizeMode.StretchImage;

        }

        private void zalauToolStripMenuItem_Click(object sender, EventArgs e)
        {
            pictureBox5.ImageLocation = "zalau.jpg";
            pictureBox5.SizeMode = PictureBoxSizeMode.StretchImage;
        }

        private void oradeaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            pictureBox5.ImageLocation = "oradea.jpg";
            pictureBox5.SizeMode = PictureBoxSizeMode.StretchImage;
        }

        private void constantaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            pictureBox5.ImageLocation = "constanta.jpg";
            pictureBox5.SizeMode = PictureBoxSizeMode.StretchImage;
        }
    }
}
