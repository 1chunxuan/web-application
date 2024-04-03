using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class AddToCart1 : System.Web.UI.Page
    {
 

        public int Counter1
        {
            get
            {
                if (ViewState["Counter1"] == null)
                {
                    return 1;
                }
                else
                {
                    return (int)ViewState["Counter1"];
                }
            }
            set
            {
                ViewState["Counter1"] = value;
                Label1.Text = value.ToString();
            }
        }

        public int Counter2
        {
            get
            {
                if (ViewState["Counter2"] == null)
                {
                    return 1;
                }
                else
                {
                    return (int)ViewState["Counter2"];
                }
            }
            set
            {
                ViewState["Counter2"] = value;
                Label2.Text = value.ToString();
            }
        }

        public int Counter3
        {
            get
            {
                if (ViewState["Counter3"] == null)
                {
                    return 1;
                }
                else
                {
                    return (int)ViewState["Counter3"];
                }
            }
            set
            {
                ViewState["Counter3"] = value;
                Label3.Text = value.ToString();
            }
        }

        public int Counter4
        {
            get
            {
                if (ViewState["Counter4"] == null)
                {
                    return 1;
                }
                else
                {
                    return (int)ViewState["Counter4"];
                }
            }
            set
            {
                ViewState["Counter4"] = value;
                Label4.Text = value.ToString();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
              
            if (!IsPostBack)
            {
                subtotal1.Text = price1.Text;
                subtotal2.Text = price2.Text;
                subtotal3.Text = price3.Text;
                subtotal4.Text = price4.Text;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int counter1Value = Convert.ToInt32(Label1.Text);
            counter1Value++; // Increment count
            Counter1 = counter1Value; // Update Counter1 property and ViewState
            Label1.Text = counter1Value.ToString();
            subtotal1.Text = (counter1Value > 1) ? (Convert.ToDecimal(price1.Text) * counter1Value).ToString("0.00") : price1.Text;
            TotalPrice.Text = CalculateTotalPrice().ToString("0.00");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int counter1Value = Convert.ToInt32(Label1.Text);
            if (counter1Value > 1)
            {
                counter1Value--;
            }
            Counter1 = counter1Value; // Update Counter1 property and ViewState
            Label1.Text = counter1Value.ToString();
            subtotal1.Text = counter1Value == 1 ? price1.Text : (Convert.ToDecimal(price1.Text) * counter1Value).ToString("0.00");
            TotalPrice.Text = CalculateTotalPrice().ToString("0.00");
        }




        protected void Button3_Click(object sender, EventArgs e)
        {
            int counter2Value = Convert.ToInt32(Label2.Text);
            counter2Value++; // Increment count
            Counter2 = counter2Value; // Update Counter1 property and ViewState
            Label2.Text = counter2Value.ToString();
            subtotal2.Text = (counter2Value > 1) ? (Convert.ToDecimal(price2.Text) * counter2Value).ToString("0.00") : price2.Text;
            TotalPrice.Text = CalculateTotalPrice().ToString("0.00");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int counter2Value = Convert.ToInt32(Label2.Text);
            if (counter2Value > 1)
            {
                counter2Value--;
            }
            Counter2 = counter2Value; // Update Counter2 property and ViewState
            Label2.Text = counter2Value.ToString();
            subtotal2.Text = counter2Value == 1 ? price2.Text : (Convert.ToDecimal(price2.Text) * counter2Value).ToString("0.00");
            TotalPrice.Text = CalculateTotalPrice().ToString("0.00");
        }


        protected void Button5_Click(object sender, EventArgs e)
        {
            int counter3Value = Convert.ToInt32(Label3.Text);
            counter3Value++; // Increment count
            Counter3 = counter3Value; // Update Counter3 property and ViewState
            Label3.Text = counter3Value.ToString();
            subtotal3.Text = (counter3Value > 1) ? (Convert.ToDecimal(price3.Text) * counter3Value).ToString("0.00") : price3.Text;
            TotalPrice.Text = CalculateTotalPrice().ToString("0.00");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            int counter3Value = Convert.ToInt32(Label3.Text);
            if (counter3Value > 1)
            {
                counter3Value--;
            }
            Counter3 = counter3Value; // Update Counter1 property and ViewState
            Label3.Text = counter3Value.ToString();
            subtotal3.Text = counter3Value == 1 ? price3.Text : (Convert.ToDecimal(price3.Text) * counter3Value).ToString("0.00");
            TotalPrice.Text = CalculateTotalPrice().ToString("0.00");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            int counter4Value = Convert.ToInt32(Label4.Text);
            counter4Value++; // Increment count
            Counter4 = counter4Value; // Update Counter1 property and ViewState
            Label4.Text = counter4Value.ToString();
            subtotal4.Text = (counter4Value > 1) ? (Convert.ToDecimal(price4.Text) * counter4Value).ToString("0.00") : price4.Text;
            TotalPrice.Text = CalculateTotalPrice().ToString("0.00");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            int counter4Value = Convert.ToInt32(Label4.Text);
            if (counter4Value > 1)
            {
                counter4Value--;
            }
            Counter4 = counter4Value; // Update Counter1 property and ViewState
            Label4.Text = counter4Value.ToString();
            subtotal4.Text = counter4Value == 1 ? price4.Text : (Convert.ToDecimal(price4.Text) * counter4Value).ToString("0.00");
            TotalPrice.Text = CalculateTotalPrice().ToString("0.00");
        }

        private decimal CalculateTotalPrice()
        {
            decimal totalPrice = 0;

            // Add up all the subtotal values
            totalPrice += Convert.ToDecimal(subtotal1.Text);
            totalPrice += Convert.ToDecimal(subtotal2.Text);
            totalPrice += Convert.ToDecimal(subtotal3.Text);
            totalPrice += Convert.ToDecimal(subtotal4.Text);

            return totalPrice;
        }


    }

}
