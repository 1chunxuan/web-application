<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddToCart1.aspx.cs" Inherits="WebApplication1.AddToCart1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh; /* Set minimum viewport height */
            background-color: #f0f0f0; /* Background color outside the form */
        }


        /*AddToCart1*/

        .counter-button {
            background-color: #5783db;
            border-radius: 50px;
            font-size:30px;
            border: none;
        }

        table {
            table-layout: fixed;
        }

        table, th, td {
            border: 2px solid black;
            border-radius: 10px;
        }

        td, th {
            text-align: center;
            padding: 1px 1px;
        }


        .auto-style1 {
            width: 174px;
        }

        .auto-style2 {
            width: 200px;
        }

        .auto-style4 {
            width: 169px;
        }

        .auto-style6 {
            width: 184px;
        }

        .auto-style7 {
            width: 191px;
        }

        .auto-style8 {
            width: 273px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding: 100px;">
        <h2>You have following products in your Cart</h2>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server">Continue Shopping</asp:HyperLink>
        <br />

        <br />
        <table style="width: 90%; border: 5px solid #ddd; border-radius: 10px;">
            <thead>
                <tr>
                    <th class="auto-style1">Product Name</th>
                    <th class="auto-style2">Product Image</th>
                    <th class="auto-style4">Product Price</th>
                    <th class="auto-style6">Quantity</th>
                    <th class="auto-style7">Subtotal</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="auto-style1">Fried Rice</td>
                    <td class="auto-style2">
                        <img src="images/r.png" style=""></td>
                    <td class="auto-style4">
                        <asp:Label ID="price1" runat="server" Text="11.10"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="Button1" runat="server" Text=" + " OnClick="Button1_Click" class="counter-button" />
                        <asp:Label ID="Label1" runat="server" Text="1" class="counter-label" />
                        <asp:Button ID="Button2" runat="server" Text=" - " OnClick="Button2_Click" class="counter-button" />
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="subtotal1" runat="server" class="subtotal-label" />
                    </td>
                    <td class="auto-style8">
                        <asp:Button ID="Button9" runat="server" Text="Remove Product" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Spaghetti</td>
                    <td class="auto-style2">
                        <img src="images/r.png" style=""></td>
                    <td class="auto-style4">
                        <asp:Label ID="price2" runat="server" Text="12.10"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="Button3" runat="server" Text=" + " OnClick="Button3_Click" class="counter-button" />
                        <asp:Label ID="Label2" runat="server" Text="1" class="counter-label" />
                        <asp:Button ID="Button4" runat="server" Text=" - " OnClick="Button4_Click" class="counter-button" />
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="subtotal2" runat="server" class="subtotal-label" />
                    </td>
                    <td class="auto-style8">
                        <asp:Button ID="Button10" runat="server" Text="Remove Product" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Pizza</td>
                    <td class="auto-style2">
                        <img src="images/r.png" style=""></td>
                    <td class="auto-style4">
                        <asp:Label ID="price3" runat="server" Text="13.10"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="Button5" runat="server" Text=" + " OnClick="Button5_Click" class="counter-button" />
                        <asp:Label ID="Label3" runat="server" Text="1" class="counter-label" />
                        <asp:Button ID="Button6" runat="server" Text=" - " DecrementBy="1" OnClick="Button6_Click" class="counter-button" />
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="subtotal3" runat="server" class="subtotal-label" />
                    </td>
                    <td class="auto-style8">
                        <asp:Button ID="Button11" runat="server" Text="Remove Product" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Burger</td>
                    <td class="auto-style2">
                        <img src="images/r.png" style=""></td>
                    <td class="auto-style4">
                        <asp:Label ID="price4" runat="server" Text="10.00"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="Button7" runat="server" Text=" + " OnClick="Button7_Click" class="counter-button" />
                        <asp:Label ID="Label4" runat="server" Text="1" class="counter-label" />
                        <asp:Button ID="Button8" runat="server" Text=" - " DecrementBy="1" OnClick="Button8_Click" class="counter-button" />

                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="subtotal4" runat="server" class="subtotal-label" />
                    </td>
                    <td class="auto-style8">
                        <asp:Button ID="Button12" runat="server" Text="Remove Product" />
                    </td>
                </tr>
            </tbody>
        </table>


        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="TotalPrice" runat="server" Text=""></asp:Label>
        <br />
        <a href="Payment.aspx" id="goToPaymentLink">Proceed to Payment</a>

    </div>
</asp:Content>

