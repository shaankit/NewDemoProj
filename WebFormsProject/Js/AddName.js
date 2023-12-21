function AppendNames() {
    var firstName = $("#firstName").val();
    var lastName = $("#lastName").val();
    var Phone = $("#Phone").val();
    var Address = $("#Address").val();
    var City = $("#City").val();
    var State = $("#State").val();
    var ZipCode = $("#ZipCode").val();

    var param = {
        FirstName: firstName,
        LastName: lastName,
        Phone: Phone,
        Address: Address,
        City: City,
        State: State,
        ZipCode: ZipCode

    };

    console.log(param);
    $.ajax({
        url: "/AddName.aspx/AppendNames",
        type: "POST",
        data: JSON.stringify({ objproxy: param }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        async: true,
        success: function (response) {
            if (!$.isEmptyObject(response))
                alert(response.d);
        },
        error: function (response) {
            console.log(response);
        }
    });
}
$(document).ready(function () {
    Getname()
});
function Getname() {
    $.ajax({
        url: "/AddName.aspx/Getname",
        type: "POST",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        async: true,
        success: function (response) {
            if (!$.isEmptyObject(response))
                alert(response.d);
        },
        error: function (response) {
            console.log(response);
        }
    });
}