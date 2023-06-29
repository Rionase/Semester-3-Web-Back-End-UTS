// Calender

let DataTanggal = [];

//Untuk Kustom tanggal sendiri dengan format MM/DD/YYYY
// let Today = new Date("11/16/2022");
let Today = new Date(Date.now());

let TodayDay = Today.getDay();

let start ; let end;
if ( TodayDay == 1 ) {
    start = 0; end = 14;
}
else if ( TodayDay == 2 ) {
    start = -1; end = 13;
}
else if ( TodayDay == 3 ) {
    start = -2; end = 12;
}
else if ( TodayDay == 4 ) {
    start = -3; end = 11;
}
else if ( TodayDay == 5 ) {
    start = -4; end = 10;
}
else if ( TodayDay == 6 ) {
    start = -5; end = 9;
}
else if ( TodayDay == 0 ) {
    start = -6; end = 8;
}

Today.setDate(Today.getDate() + start - 1);

for ( var i = start ; i < end ; i++ ) {
    Today.setDate(Today.getDate() + 1);
    if ( i<0 || i>7 ) {
        DataTanggal.push( {
            Tanggal : Today.toLocaleDateString("en-GB"),
            Status : "Past",
            TanggalPanjang : Today.toLocaleDateString('en-US',{ weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' }) 
        } )
    }
    else if ( i==0 ) {
        DataTanggal.push( {
            Tanggal : Today.toLocaleDateString("en-GB"),
            Status : "Today",
            TanggalPanjang : Today.toLocaleDateString('en-US',{ weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' })
        } )
    }
    else {
        DataTanggal.push( {
            Tanggal : Today.toLocaleDateString("en-GB"),
            Status : "Future",
            TanggalPanjang : Today.toLocaleDateString('en-US',{ weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' })
        } )
    }
}

let HTMLDate = document.getElementsByClassName("date");

for ( var j = 0 ; j < HTMLDate.length ; j++ ) {
    HTMLDate[j].innerHTML = DataTanggal[j].Tanggal
    if ( DataTanggal[j].Status == "Past" ) {
        HTMLDate[j].disable = true;
        HTMLDate[j].style.color = "#B2B2B2"
    }
    else if ( DataTanggal[j].Status == "Today" ) {
        HTMLDate[j].disable = true;
        HTMLDate[j].style.color = "white"
        HTMLDate[j].style.borderColor = "#83F28F";
        document.getElementById("SelectedDate").innerHTML = DataTanggal[j+1].TanggalPanjang
        document.getElementsByClassName("InputForm")[0].value = DataTanggal[j+1].TanggalPanjang
        HTMLDate[j+1].style.backgroundColor = "#7743DB";
    }
    else if ( DataTanggal[j].Status == "Future" ) {
        HTMLDate[j].addEventListener("mouseover", MouseOverDate.bind(event, j) )
        HTMLDate[j].addEventListener("mouseout", MouseOutDate.bind(event, j) )
        HTMLDate[j].addEventListener("click", SwitchDate.bind(event, j) )        
    }
}

function MouseOverDate( param ) {
    HTMLDate[param].style.borderColor = "rgba(255, 255, 255, 0.767)";
}

function MouseOutDate( param ) {
    HTMLDate[param].style.borderColor = "rgba(255, 255, 255, 0)";
}

function SwitchDate ( param ) {
    for ( var a = 0 ; a < HTMLDate.length ; a++ ) {
        if ( a == param ) {
            HTMLDate[a].style.backgroundColor = "#7743DB";
        }
        else {
            HTMLDate[a].style.backgroundColor = "rgba(255, 255, 255, 0)";
        }
    }
    document.getElementById("SelectedDate").innerHTML = DataTanggal[param].TanggalPanjang;
    document.getElementsByClassName("InputForm")[0].value = DataTanggal[param].TanggalPanjang;
    // Function ini dipanggil agar saat page terload, maka fungsi akan dijalankan untuk memuat menu default
    UbahMenu();
}










// Breakfast, Lunch, Dinner Button

let MealPlans = document.getElementsByClassName("button3");

function MouseOverMealPlans ( param ) {
    MealPlans[param].style.backgroundColor = "#8D72E1" ;
    MealPlans[param].style.color = "white" ;
}

MealPlans[0].addEventListener("mouseover", MouseOverMealPlans.bind(event, 0))
MealPlans[1].addEventListener("mouseover", MouseOverMealPlans.bind(event, 1))
MealPlans[2].addEventListener("mouseover", MouseOverMealPlans.bind(event, 2))

function MouseOutMealPlans ( param ) {
    let MealTypeForm = document.getElementsByClassName("InputForm")[1].value;
    if ( MealTypeForm == "Breakfast" && param == 0 )  {
        MealPlans[param].style.backgroundColor = "transparent" ;
    } 
    else if ( MealTypeForm == "Lunch" && param == 1 ) {
        MealPlans[param].style.backgroundColor = "transparent" ;
    }
    else if ( MealTypeForm == "Dinner" && param == 2 ) {
        MealPlans[param].style.backgroundColor = "transparent" ;
    }
    else {
        MealPlans[param].style.backgroundColor = "transparent" ;
        MealPlans[param].style.color = "#8D72E1" ;
    }
}

MealPlans[0].addEventListener("mouseout", MouseOutMealPlans.bind(event, 0))
MealPlans[1].addEventListener("mouseout", MouseOutMealPlans.bind(event, 1))
MealPlans[2].addEventListener("mouseout", MouseOutMealPlans.bind(event, 2))

function SwitchMealPlans ( mealtype, index) {
    document.getElementsByClassName("InputForm")[1].value = mealtype;
    for ( var d = 0 ; d < MealPlans.length ; d++ ) {
        if ( d == index ) {
            MealPlans[d].style.borderColor = "white";
            MealPlans[d].style.color = "white";
        }
        else {
            MealPlans[d].style.borderColor = "#8D72E1";
            MealPlans[d].style.color = "#8D72E1"
        }
    }
    // Function ini dipanggil agar saat page terload, maka fungsi akan dijalankan untuk memuat menu default
    UbahMenu();
    SetPrice();
}

MealPlans[0].addEventListener("click", SwitchMealPlans.bind(event, "Breakfast", 0))
MealPlans[1].addEventListener("click", SwitchMealPlans.bind(event, "Lunch", 1))
MealPlans[2].addEventListener("click", SwitchMealPlans.bind(event, "Dinner", 2))











// Fetch data Menu from database


function UbahMenu () {
    let ReservationDate = document.getElementsByClassName("InputForm")[0].value ;
    let MealPlansValue = document.getElementsByClassName("InputForm")[1].value ;

    let weekday = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    let SelectedDate = new Date(ReservationDate).getDay()

    link = `/MenuData/${weekday[SelectedDate]}-${MealPlansValue}`;

    fetch ( link )
    .then( (response) => response.json() )
    .then( (data) => LoadMenu(data) )
    .catch((error) => console.error('Error:', error));
}

function LoadMenu( data ) {
    let Text = "" ;
    for ( var e = 0 ; e < data.length ; e++ ) {
        Text += `
        <div class="Main7">
            <img class="Menu" src="${data[e].image_path}">
            <div class="Main8">
              <div class="FoodName"> ${data[e].food_name} </div>
              <div class="Description">${data[e].food_description}</div>
            </div>
          </div>
        `
    }
    document.getElementById("Main6").innerHTML = Text;
}











// Price

function SetPrice() {
    let MealPlansPrice = document.getElementsByClassName("InputForm")[1].value ;
    let OrdersAmountPrice = parseInt( document.getElementsByClassName("InputForm")[2].value ) ;

    console.log(MealPlansPrice)
    console.log(OrdersAmountPrice)

    if ( MealPlansPrice == "Breakfast" ) {
        document.getElementsByClassName("InputForm")[3].value = "$" + (OrdersAmountPrice * 15).toString() ;
        console.log("Berhasil1")
    }
    else if ( MealPlansPrice == "Lunch" || MealPlansPrice == "Dinner" ) {
        document.getElementsByClassName("InputForm")[3].value = "$" + (OrdersAmountPrice * 25).toString() ;
        console.log("Berhasil2")
    }

}

document.getElementsByClassName("InputForm")[2].addEventListener( "change", SetPrice ) ;










// Alert pas Reservation Berhasil.

document.getElementById("Form").addEventListener("submit", () => {alert("Reservation Accepted.") })






// Memanggil Function yang akan meload Menu default, Meal Plans default dan Price default saat page diload

SwitchMealPlans("Breakfast", 0);





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
document.getElementById("hidden_username").value = Username ;
document.getElementById("hidden_password").value = Password ;
