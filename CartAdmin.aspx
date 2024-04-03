<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CartAdmin.aspx.cs" Inherits="WebApplication1.CartAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding:150px;">
           <table style="width: 90%; border: 5px solid #ddd; border-radius: 10px;">
  <thead> <tr>
      <th class="auto-style1">Customer ID</th>
      <th class="auto-style1">Product Name</th>
      <th class="auto-style2">Product Image</th>
      <th class="auto-style4">Product Price</th>
      <th class="auto-style6">Quantity</th>
      <th class="auto-style7">Subtotal</th>
    </tr>
  </thead>
  <tbody>  <tr>
      <td class="auto-style1">C001</td>
      <td class="auto-style1">Fried Rice</td>
      <td class="auto-style2">&nbsp;</td>
      <td class="auto-style4">
          <asp:Label ID="price1" runat="server" Text="11.10"></asp:Label>
      </td>
      <td class="auto-style6">
        <asp:Label ID="Label1" runat="server" Text="2" class="counter-label" />
      </td>
      <td class="auto-style7">
        <asp:Label ID="subtotal1" runat="server" class="subtotal-label" />
      </td>
      <td class="auto-style8">
      </td>
    </tr>
    <tr>
      <td class="auto-style1">&nbsp;</td>
      <td class="auto-style1">Spaghetti</td>
      <td class="auto-style2">&nbsp;</td>
      <td class="auto-style4">
          <asp:Label ID="price2" runat="server" Text="12.10"></asp:Label>
        </td>
      <td class="auto-style6">
        <asp:Label ID="Label2" runat="server" Text="1" class="counter-label" />
      </td>
      <td class="auto-style7">
        <asp:Label ID="subtotal2" runat="server" class="subtotal-label" />
      </td>
    </tr>
    <tr>
      <td class="auto-style1">&nbsp;</td>
      <td class="auto-style1">Pizza</td>
      <td class="auto-style2">&nbsp;</td>
      <td class="auto-style4">
          <asp:Label ID="price3" runat="server" Text="13.10"></asp:Label>
        </td>
      <td class="auto-style6">
        <asp:Label ID="Label3" runat="server" Text="1" class="counter-label" />
      </td>
      <td class="auto-style7">
        <asp:Label ID="subtotal3" runat="server" class="subtotal-label" />
      </td>
    </tr>
    <tr>
      <td class="auto-style1">&nbsp;</td>
      <td class="auto-style1">Burger</td>
      <td class="auto-style1"></td>
      <td class="auto-style1">
          <asp:Label ID="price4" runat="server" Text="10.00"></asp:Label>
        </td>
      <td class="auto-style1">
        <asp:Label ID="Label4" runat="server" Text="1" class="counter-label" />
        
      </td>
      <td class="auto-style1">
        <asp:Label ID="subtotal4" runat="server" class="subtotal-label" />
      </td>
    </tr>
    <tr>
      <td class="auto-style1">&nbsp;</td>
      <td class="auto-style1">&nbsp;</td>
      <td class="auto-style1">&nbsp;</td>
      <td class="auto-style1">
          &nbsp;</td>
      <td class="auto-style1">
          &nbsp;</td>
      <td class="auto-style1">
          <asp:Label ID="totalPrice" runat="server"></asp:Label>
      </td>
    </tr>
  </tbody>
</table>
    </div>
</asp:Content>
