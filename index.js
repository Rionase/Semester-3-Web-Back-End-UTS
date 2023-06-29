import express from "express";
import mysql2 from "mysql2";
import cors from "cors";
import { fileURLToPath } from "url";
import { dirname } from "path";

let hostname = "127.0.0.1";
let port = 3000;

let app = express();
let conn = mysql2.createConnection({
    host : "localhost",
    user : "root",
    password : "",
    database : "projekuts"
});
let __filename = fileURLToPath(import.meta.url);
let __dirname = dirname(__filename);

app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static("public"))

conn.connect( err => {
    if ( err ) { 
        console.error("Database is disconnect!");
        console.error(err);
    }
    else {
        console.log("Database is connected.")
    }
});










app.get("/", (req,res) => {
    res.redirect(301, "/Home")
})

app.get("/Home", (req,res) => {
    res.sendFile( __dirname + "/public/HTML/Guest/Home.html" )
})

app.get("/Home/:username/:password", (req,res) => {
    let username = req.params.username
    let password = req.params.password
    let sql = `SELECT * FROM userdata WHERE username = '${username}' AND password = '${password}' ;`;
    let query = conn.query(sql, (err,results) => {
        if ( err ) {
            console.error("query is failed.");
            res.end("query is failed");
        }
        else if ( results.length == 0  ) {
            res.redirect(301, "/PageNotFound")
        }
        else {
            res.sendFile( __dirname + "/public/HTML/User/Home.html" )
        }
    })
})

app.get("/About-Us", (req,res) => {
    res.sendFile( __dirname + "/public/HTML/Guest/About-Us.html" )
})

app.get("/About-Us/:username/:password", (req,res) => {
    let username = req.params.username
    let password = req.params.password
    let sql = `SELECT * FROM userdata WHERE username = '${username}' AND password = '${password}' ;`;
    let query = conn.query(sql, (err,results) => {
        if ( err ) {
            console.error("query is failed.");
            res.end("query is failed");
        }
        else if ( results.length == 0  ) {
            res.redirect(301, "/PageNotFound")
        }
        else {
            res.sendFile( __dirname + "/public/HTML/User/About-Us.html" )
        }
    })
})

app.get("/User", (req,res) => {
    res.sendFile( __dirname + "/public/HTML/Guest/Account.html" )
})

app.get("/Reservation/:username/:password" , (req,res) => {
    let username = req.params.username
    let password = req.params.password
    let sql = `SELECT * FROM userdata WHERE username = '${username}' AND password = '${password}' ;`;
    let query = conn.query(sql, (err,results) => {
        if ( err ) {
            console.error("query is failed.");
            res.end("query is failed");
        }
        else if ( results.length == 0  ) {
            res.redirect(301, "/PageNotFound")
        }
        else {
            res.sendFile( __dirname + "/public/HTML/User/Reservation.html" )
        }
    })
})

app.get("/MyOrders/:username/:password" , (req,res) => {
    let username = req.params.username
    let password = req.params.password
    let sql = `SELECT * FROM userdata WHERE username = '${username}' AND password = '${password}' ;`;
    let query = conn.query(sql, (err,results) => {
        if ( err ) {
            console.error("query is failed.");
            res.end("query is failed");
        }
        else if ( results.length == 0  ) {
            res.redirect(301, "/PageNotFound")
        }
        else {
            res.sendFile( __dirname + "/public/HTML/User/MyOrders.html" )
        }
    })
})










app.post("/LogIn", (req,res) => {
    let sql = `SELECT * FROM userdata WHERE username = '${req.body.Username}' AND password = '${req.body.Password}' ;`;
    let query = conn.query(sql, (err,results) => {
        if ( err ) {
            console.error("query is failed.");
            res.end("query is failed");
        }
        else if ( results.length == 0  ) {
            res.json( { status : "Gagal" } )
        }
        else {
            res.json( { status : "Berhasil", hasil :  `/Home/${req.body.Username}/${req.body.Password}` } )
        }
    })
})

app.post("/SignUp", (req,res) => {
    let sql = `INSERT INTO userdata (username, password) VALUES ('${req.body.Username}', '${req.body.Password}')`;
    let query = conn.query(sql, (err,results) => {
        if ( err ) {
            res.json( { status : "Gagal" } )
        }
        else {
            res.json( { status : "Berhasil", hasil :  `/Home/${req.body.Username}/${req.body.Password}` } )
        }
    })
})

app.post("/Reservation", (req,res) => {
    let username = req.body.Username ;
    let reservation_name = req.body.ReservationName ;
    let active_phone_number = req.body.ActivePhoneNumber ;
    let address = req.body.Address ;

    let DateNow = new Date(req.body.Date) ;
    let year = DateNow.toLocaleString("default", { year: "numeric" });
    let month = DateNow.toLocaleString("default", { month: "2-digit" });
    let day = DateNow.toLocaleString("default", { day: "2-digit" });
    let formattedDate = year + "-" + month + "-" + day;

    let meal_plans;
    if ( req.body.MealPlans == "Breakfast" ) {
        meal_plans = 1 ;
    }
    else if ( req.body.MealPlans == "Lunch" ) {
        meal_plans = 2 ;
    }
    else if ( req.body.MealPlans == "Dinner" ) {
        meal_plans = 3 ;
    }
    let orders_amount = parseInt(req.body.OrdersAmount) ;
    let price = req.body.Price ;
    
    let sql = `INSERT INTO reservation (reservation_id, username, reservation_name, active_phone_number, address, date, meal_plans, orders_amount, price) VALUES (NULL, '${username}', '${reservation_name}', '${active_phone_number}', '${address}', '${formattedDate}', '${meal_plans}', ${orders_amount}, '${price}');`;    let query = conn.query(sql, (err,results) => {
        if ( err ) {
            console.error("query is failed.");
            res.end("query is failed.")
        }
    });
    res.redirect(301, `/Reservation/${req.body.Username}/${req.body.Password}`)
})





app.get("/MenuData/:Day-:MealPlan", (req,res)=>{
    let sql = `SELECT * FROM menu WHERE day = '${req.params.Day}' AND meal_plan = '${req.params.MealPlan}' ;`;
    let query = conn.query(sql, (err, results) => {
        if ( err ) {
            console.error("query is failed.");
            res.end("query is failed");
        }
        else {
            res.json(results)
        }
    });
})

app.get("/MyOrdersData/:username", (req,res)=>{
    let sql = `SELECT * FROM reservation WHERE username = '${req.params.username}' GROUP BY date DESC, meal_plans DESC , reservation_id ASC ; ` ;
    let query = conn.query(sql, (err, results) => {
        if ( err ) {
            console.error("query is failed.");
            res.end("query is failed");
        }
        else {
            res.json(results)
        }
    });
})











app.get("/PageNotFound", (req,res) => {
    res.sendFile( __dirname + "/public/HTML/Guest/Error404.html" )
})

app.get("*", (req,res)=> {
    res.redirect(301, "/PageNotFound")
})


app.listen(port, () => {
    console.log(`Server running at ${hostname}:${port}`)
})