var express = require('express');
var app = express();
var server = app.listen(80);

app.use(express.static('public'));

app.get("/", function (request, response) {
	  response.sendFile(__dirname + '/views/index.html');
});
