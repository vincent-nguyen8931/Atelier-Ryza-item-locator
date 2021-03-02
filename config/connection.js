var mysql = require("mysql");
var connection;

// Checks jawsDB in heroku too see if connection has been made
if (process.env.JAWSDB_URL) {
  connection = mysql.createConnection(process.env.JAWSDB_URL);
  // if not then localhost connection is created
} else {
 connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "password",
  database: "ryzaItemsDB"
});
}

// test to see if connection is successful or not
connection.connect(function(err) {
  if (err) {
      console.error("error connecting: " + err.stack);
      return;
  }
  console.log("connected as id: " + connection.threadId);
});

module.exports = connection;


