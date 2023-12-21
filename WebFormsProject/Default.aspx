<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebFormsProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
       <%-- <h1>ASP.NET</h1>
        <p class="lead">React js is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>--%>
       

        <label for="firstName">First Name</label>
        <input id="firstName" class="form-control" />

        <br />

        <label for="lastName">Last Name</label>
        <input id="lastName" class="form-control" />

        <br />

         <p><a href="javascript:void(0)" onclick="callAppendName();" class="btn btn-primary btn-lg">Append Names</a></p>
    </div>

    <%--<div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>--%>

    <div>

    </div>
    
    <script type="text/javascript">

        function callAppendName() {
            var firstName = $("#firstName").val();
            var lastName = $("#lastName").val();

            var param = {
                FirstName: firstName,
                LastName: lastName
            };

            console.log(param);
            $.ajax({
                url: "/Default.aspx/AppendName",
                type: "POST",
                data: JSON.stringify(param),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    if (!$.isEmptyObject(response))
                        alert(response.d);
                },
                error: function (response) {
                    console.log(response);
                }
            });
        }

    </script>

</asp:Content>