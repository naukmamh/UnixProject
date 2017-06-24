/**
 * Created by maria on 21.06.2017.
 */
// send data to DB

function sendtoDB() {
    var username = document.getElementById("usernameR").value;
    var login = document.getElementById("login").value;
    var password = document.getElementById("passwordR").value;
// Returns successful data submission message when the entered information is stored in database.
    var dataString = 'name1=' + username + '&name11=' + login+ '&password1=' + password;
    if (username == '' || password == ''|| login == '') {
        alert("Please Fill All Fields");
    } else {
// AJAX code to submit form.
        $.ajax({
            type: "POST",
            url: "/sources/libraries/php/toDB.php",
            data: dataString,
            cache: false,
            success: success()
        });
    }
    function success(){
        $("#registrationForm").fadeOut();
    }
    return false;
}