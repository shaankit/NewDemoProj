﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="WebFormsProject.WebUserControl1" %>
<table>  
    <tr>  
        <td>  
            <fieldset>  
                <asp:Label ID="lblMessage" runat="server"></asp:Label>  
            </fieldset>  
        </td>  
    </tr>  
    <tr>  
        <td>  
            <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>  
        </td>  
        <td>  
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>  
        </td>  
    </tr>  
    <tr>  
        <td>  
            <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>  
        </td>  
        <td>  
            <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>  
        </td>  
    </tr>  
    <tr>  
        <td>  
            <asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label>  
        </td>  
        <td>  
            <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>  
        </td>  
    </tr>  
    <tr>  
        <td>  
            <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>  
        </td>  
        <td>  
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>  
        </td>  
    </tr>  
    <tr>  
        <td>  
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" />  
        </td>  
    </tr>  
  
</table>