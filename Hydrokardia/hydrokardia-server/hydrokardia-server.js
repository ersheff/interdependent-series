var express = require('express'),
    app = express(),
    server = require('http').createServer(app),
    io = require('socket.io').listen(server),
    players = {};

server.listen(process.env.PORT);

io.on('connection', function (socket) {
    
    // --- intial connection messages 
    
    // send a message when a new connection is made to all of the clients EXCEPT for the new particpant
    socket.broadcast.emit('message', "other player has joined");
    
    // send a message to only a new client when they have connected
    socket.emit('message', "welcome"); 

    // ---



    // --- player to player communications

    // chat messages
    socket.on('chat', function (chat) {
        socket.broadcast.emit('chat', chat);
    })

    // start message
    socket.on('go', function () {
        socket.broadcast.emit('go');
    })

    // fader data
    socket.on('fader', function (...data) {
        socket.broadcast.emit('fader', ...data);
    })

    // chat messages
    socket.on('step', function (step) {
        socket.broadcast.emit('step', step);
    })
    
});