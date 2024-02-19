var http = require('http');

http.createServer(function (request, response) {
    
    
    console.log('Url: ' + request.url);
    console.log('Тип запроса: ' + request.method);
    console.log('User-Agent: ' + request.headers['user-agent']);
    console.log('Все заголовки');
    console.log(request.headers);

    response.setHeader('Content-Type', 'text/html');
    response.write('<!DOCTYPE html>');
    response.write('<html>');
    response.write('<head>');
    response.write('<title>Мой первый сервер на Note.JS</title>');
    response.write('<meta charset="utf-8" />');
    response.write('</head>');
    response.write('<body><h2>Мой первый сервер на Note.JS</h2></body>');
    response.write('</html>');

    response.end();
}).listen(3000);
