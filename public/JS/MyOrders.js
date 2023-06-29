const url = window.location.href.split("/")
const Username = url[url.length-2]
const Password = url[url.length-1]

navbar = document.getElementsByClassName("navtext");
navbar[0].href = `/Home/${Username}/${Password}`;
navbar[1].href = `/Reservation/${Username}/${Password}`;
navbar[2].href = `/MyOrders/${Username}/${Password}`;
navbar[3].href = `/About-Us/${Username}/${Password}`;

document.getElementsByClassName("usernamesub")[0].innerHTML = Username ;










// Mengambil data reservasi user

fetch(`/MyOrdersData/${Username}`)
    .then( response => response.json() )
    .then( data => LoadUserHistory(data) )
    .catch( err => console.log(err) )

function LoadUserHistory(data) {
    let Text = '' ;
    let Meal_Plans ;

    // Apabila ditemukan data reservasi user

    if ( data.length > 0 ) {

        document.getElementById("NoOrders").remove() ;

        for ( var i = 0 ; i < data.length ; i++ ) {

            // Untuk Kustom tanggal sendiri dengan format MM/DD/YYYY
            // let Yesterday = new Date("11/16/2022");
            let Yesterday = new Date(Date.now());

            Yesterday.setDate(Yesterday.getDate() - 1);
            let MySqlDate = new Date(Date.parse(data[i].date)) ;
            let JSDate = MySqlDate.toLocaleDateString('en-US',{ weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' }) 

            if ( data[i].meal_plans == 1 ) { Meal_Plans = "Breakfast" ; }
            else if ( data[i].meal_plans == 2 ) { Meal_Plans = "Lunch" ; }
            else if ( data[i].meal_plans == 3 ) { Meal_Plans = "Dinner" ; }

            if ( MySqlDate > Yesterday ) {
                Text += `
                <li class="timeline-event">
                <label class="timeline-event-icon"></label>
                <div class="timeline-event-copy">
                    <p class="timeline-event-thumbnail">${JSDate}</p>
                    <h3 class="timeline-mealplans">${Meal_Plans} <span class="amount">x${data[i].orders_amount}</span></h3>
                    <h4>Address : ${data[i].address}</h4>
                    <h4>Reservation on behalf of : ${data[i].reservation_name}</h4>
                    <div class="Main2"></div>
                </div>
                </li>
                `
            }
            else {
                Text += `
                <li class="past-event">
                <label class="past-event-icon"></label>
                <div class="past-event-copy">
                    <p class="past-event-thumbnail">${JSDate}</p>
                    <h3 class="past-mealplans">${Meal_Plans} <span class="amount">x${data[i].orders_amount}</span></h3>
                    <h4>Address : ${data[i].address}</h4>
                    <h4>Reservation on behalf of : ${data[i].reservation_name}</h4>
                    <div class="past-Main2"></div>
                </div>
                </li>
                `
            }
        }
        document.getElementsByClassName("timeline")[0].innerHTML = Text ;

        LoadMenu() ;
    }

    // Apabila data reservasi user tidak ditemukan/ user blm pernah melakukan reservasi
    else {
        document.getElementsByClassName("timeline")[0].remove() ;
        document.getElementById("Here").href = `/Reservation/${Username}/${Password}` ;
    }
}







// Mengambil data menu makanan dan menampilkannya secara singkat pada HTML

function LoadMenu () {
    let OngoingMenu = document.getElementsByClassName("timeline-event") ;
    let PastMenu = document.getElementsByClassName("past-event") ;
    let weekday = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]

    for ( let a = 0 ; a < OngoingMenu.length ; a++ ) {
        let MealPlansMenu = document.getElementsByClassName("timeline-mealplans")[a].innerText.split(" ")[0] ;
        let MenuDay = new Date ( document.getElementsByClassName("timeline-event-thumbnail")[a].innerHTML ).getDay() ;
        fetch(`/MenuData/${weekday[MenuDay]}-${MealPlansMenu}`)
        .then( (response) => response.json() )
        .then( (data) => {
            for ( let b = 0 ; b < data.length ; b++ ) {
                document.getElementsByClassName("Main2")[a].innerHTML += `<div class="Menu">${data[b].food_name}</div>` ;
            }
        } )
        .catch((error) => console.error('Error:', error));
    }

    for ( let c = 0 ; c < PastMenu.length ; c++ ) {
        let MealPlansMenu = document.getElementsByClassName("past-mealplans")[c].innerText.split(" ")[0] ;
        let MenuDay = new Date ( document.getElementsByClassName("past-event-thumbnail")[c].innerHTML ).getDay() ;
        fetch(`/MenuData/${weekday[MenuDay]}-${MealPlansMenu}`)
        .then( (response) => response.json() )
        .then( (data) => {
            for ( let d = 0 ; d < data.length ; d++ ) {
                document.getElementsByClassName("past-Main2")[c].innerHTML += `<div class="past-Menu">${data[d].food_name}</div>` ;
            }
        } )
        .catch((error) => console.error('Error:', error));
    }

}