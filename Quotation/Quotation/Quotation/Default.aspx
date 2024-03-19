<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Quotation.Quotation.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Price Quotation</title>
</head>
<body>
    <form id="frmQuotation" runat="server">
        <h1>Price Quotation</h1>

        <table>
            <tr>
                <td>Sales Price:</td>
                <td width="10">&nbsp;</td>
                <td><asp:TextBox ID="txtSalesPrice" runat="server"></asp:TextBox></td>
                <td width="10">&nbsp;</td>
                <td><asp:RequiredFieldValidator ID="valSalesPrice" runat="server" ErrorMessage="*" ControlToValidate="txtSalesPrice" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Discount Percent:</td>
                <td width="10">&nbsp;</td>
                <td><asp:TextBox ID="txtDiscountPercent" runat="server"></asp:TextBox></td>
                <td width="10">&nbsp;</td>
                <td><asp:RequiredFieldValidator ID="valDiscountPercent" runat="server" ErrorMessage="*" ControlToValidate="txtDiscountPercent" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
            </tr>
             <tr>
                <td>Discount Amount:</td>
                <td width="10">&nbsp;</td>
                <td><b><asp:Label ID="lblDiscountAmount" runat="server" Text=""></asp:Label></b></td>
                <td width="10">&nbsp;</td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td width="10">&nbsp;</td>
                <td></td>
                <td width="10">&nbsp;</td>
                <td></td>
            </tr>
            <tr>
                <td>Total Price:</td>
                <td width="10">&nbsp;</td>
                <td><b><asp:Label ID="lblTotalPrice" runat="server" Text=""></asp:Label></b></td>
                <td width="10">&nbsp;</td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td width="10">&nbsp;</td>
                <td></td>
                <td width="10">&nbsp;</td>
                <td></td>
            </tr>
            <tr>
                <td colspan="5"><asp:Button ID="cmdCalculate" runat="server" Text="CALCULATE" OnClick="cmdCalculate_Click" /></td>
            </tr>

         </table>
    </form>
</body>
</html>
