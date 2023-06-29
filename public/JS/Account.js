let LogIn = document.getElementById("LogInSubmit");

LogIn.addEventListener( "click", TryLogIn ) ;

function TryLogIn () {
    let Username = document.getElementById("LogInUsername").value;
    let Password = document.getElementById("LogInPassword").value;

    if ( Username == "" || Password == "" ) {
        alert("Please input Your Username and Your Password !!!")
    }
    else {
        fetch( "/LogIn", {
            method: 'POST', 
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify( { Username : Username , Password : Password } )
        } )
        .then((response) => response.json())
        .then((data) => { CheckLogInResponse(data) })
        .catch((error) => { console.error( 'Error:', error )});
    }

}

function CheckLogInResponse(data) {
    if ( data.status == "Berhasil" ) {
        window.location.href = data.hasil
    }
    else if ( data.status == "Gagal" ) {
        alert( "Username isn't found/ Wrong pasword !" ) ;
    }
}

let SignUp = document.getElementById("SignUpSubmit");





SignUp.addEventListener( "click", TrySignUp ) ;

function TrySignUp () {
    let Username = document.getElementById("SignUpUsername").value;
    let Password = document.getElementById("SignUpPassword").value;
    let ConfirmPass = document.getElementById("SignUpConfirmPassword").value;

    if ( Username == "" || Password == "" || ConfirmPass == "" ) {
        alert("Please input New Username, New Password and Confirm Password before sign up !!!");
    }

    else if ( Password != ConfirmPass ) {
        alert("New Password and Confirm Password must be the same !!!");
    }

    else {
        fetch( "/SignUp", {
            method: 'POST', 
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify( { Username : Username , Password : Password } )
        } )
        .then((response) => response.json())
        .then((data) => { CheckSignUpResponse(data) })
        .catch((error) => { console.error( 'Error:', error )});
    }

}

function CheckSignUpResponse(data) {
    if ( data.status == "Gagal" ) {
        alert("Username have already been used by other cutomer. Try to input another usename.")
    }
    else if ( data.status == "Berhasil" ) {
        window.location.href = data.hasil
    }
}