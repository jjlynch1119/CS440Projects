using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quotation.Quotation
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void cmdCalculate_Click(object sender, EventArgs e)
        {
            double salesPrice = int.Parse(txtSalesPrice.Text);
            double discountPercent = int.Parse(txtDiscountPercent.Text);
            double discountAmount = salesPrice * (discountPercent / 100);

            double totalPrice = salesPrice - discountAmount;

            //lblDiscountAmount.Text = (int.Parse(txtSalesPrice.Text) * (int.Parse(txtDiscountPercent.Text) / 100)).ToString();
            lblDiscountAmount.Text = String.Format("{0:C}", discountAmount);
            lblTotalPrice.Text = String.Format("{0:C}", totalPrice);
        }
    }
}