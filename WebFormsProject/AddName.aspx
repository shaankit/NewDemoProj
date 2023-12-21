<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddName.aspx.cs" Inherits="WebFormsProject.AddName" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<%: System.Web.Optimization.Scripts.Render("~/Bundles/jsAddName")%>
    <div class="jumbotron">
        <label for="firstName">First Name</label>
        <input id="firstName" class="form-control" />

        <br />

        <label for="lastName">Last Name</label>
        <input id="lastName" class="form-control" />

        <br />

        <label for="lastName">Phone</label>
        <input id="Phone" class="form-control" />

        <br />

        <label for="lastName">Address</label>
        <input id="Address" class="form-control" />

        <br />

        <label for="lastName">City</label>
        <input id="City" class="form-control" />

        <br />

        <label for="lastName">State</label>
        <input id="State" class="form-control" />

        <br />

        <label for="lastName">Zip Code</label>
        <input id="ZipCode" class="form-control" />

        <br />

         <p><a href="javascript:void(0)" onclick="AppendNames();" class="btn btn-primary btn-lg">Names</a></p>
    </div>

    <div>

    </div>
</asp:Content>