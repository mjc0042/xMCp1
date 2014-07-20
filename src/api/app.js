// Create Http server connection
var http = require('http');

http.createServer(function (req, res) {
  res.writeHead(200, {'Content-Type':'text/plain'});
}).listen(3030,"127.0.0.1");
console.log('Server running at http://127.0.0.1:3030/');

// Create MySQL Database connection
var mysql = require('mysql');
var mysqlConnection = mysql.createConnection({
  host : 'localhost',
  user : 'root',
  password: 'chance007',
  database: 'xmcp1'
});

mysqlConnection.connect(function(err) {
  if (err) {
    console.error('Error connecting to MySQL Database: ' + err.stack);
    return;
  }
  console.log('Connection to MySQL Database successful.');
});

