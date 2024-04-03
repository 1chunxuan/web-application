using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class CartAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int counter1Value = Convert.ToInt32(Label1.Text);
            subtotal1.Text = (counter1Value > 0) ? (Convert.ToDecimal(price1.Text) * counter1Value).ToString("0.00") : price1.Text;
        }
    }
}