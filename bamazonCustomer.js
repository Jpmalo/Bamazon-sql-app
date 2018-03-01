
// Includes npm packages
var mysql = require('mysql');
var inquirer = require('inquirer');

// Connection setup
var connection = mysql.createConnection({
    host: 'localhost',
    port: '3306',
    user: 'root',
    password: '',
    database: 'bamazon'
})

/* ------ */

// Connects to server and displays items for sale

connection.connect(function (err) {
    if(err) {
        throw err;
    } else {
        connection.query("SELECT * FROM products", function(err, resp) {
            if(err) {
                throw err;
            } else {
                for (var i = 0; i < resp.length; i++) {
                    console.log("ID: " + resp[i].id + " | Product: " + resp[i].product + " | Department: " +
                    resp[i].department + " | Price: " + resp[i].price + " | In Stock: " + resp[i].inventory);
                }
                promptID();
            }
        })
    }
})

function promptID() {
    inquirer.prompt([
        {type: "input",
         name: "id",
         message: "Please enter the ID of the item you would like"
        }
    ]).then(function(val) {
        var id = val.id;
        promptAmount();
        inStock(id);
    })
}

function promptAmount() {
    inquirer.prompt([
        {type: "input",
         name: "amount",
         message: "Please enter the amount you would like to purchase"
        }
    ]).then(function(val) {
        var amount = val.amount;
    })
}

function inStock(id) {
    connection.query("SELECT * FROM products", function(err, resp) {
        if(err) {
            throw err;
        } else {    
            for (var i = 0; i <= resp.length; i++) {
                if(id == i) {
                    console.log(id);
                console.log("In Stock:" + resp[i-1].inventory);
                }
            }

            
        }
    })
} 