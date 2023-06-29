// saat page yang membawa username dan password pada URL, maka akan username dan password akan langsung dimasukkan 
// ke dlm artibut HTML, seperti HREF pada navigation bar dan button tertentu

const url = window.location.href.split("/")
const Username = url[url.length-2]
const Password = url[url.length-1]

navbar = document.getElementsByClassName("navtext");
navbar[0].href = `/Home/${Username}/${Password}`;
navbar[1].href = `/Reservation/${Username}/${Password}`;
navbar[2].href = `/MyOrders/${Username}/${Password}`;
navbar[3].href = `/About-Us/${Username}/${Password}`;

document.getElementsByClassName("usernamesub")[0].innerHTML = Username ;

document.getElementsByClassName("button")[0].href = `/Reservation/${Username}/${Password}`;



