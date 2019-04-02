const maxApi = require('max-api');
const io = require('socket.io-client')

//var socket = io.connect('http://localhost:8080', {reconnect: true});
var socket = io.connect('https://telematic.herokuapp.com', {reconnect: true});

// report connection status
socket.on('connect', function () {
    console.log('connected');
});



// --- incoming from patch

// messages to inlet with 'chat' flag
maxApi.addHandler('chat', function (chat) {
    socket.emit('chat', chat);
});

// messages to inlet with 'go' flag
maxApi.addHandler('go', function () {
    socket.emit('go');
});

// messages to inlet with 'fader' flag
maxApi.addHandler('fader', function (...data) {
    socket.emit('fader', ...data);
});

// messages to inlet with 'step' flag
maxApi.addHandler('step', function (step) {
    socket.emit('step', step);
});


// ---



// --- incoming from server

// when client recieves a generic status message from server, print to console
socket.on('message', function (message) {
    console.log(message);
});

// when client recieves a 'chat' message from server, print to console with ~
socket.on('chat', function (chat) {
    console.log('~ ', chat);
});

// when client recieves a 'go' message from server, send bang out outlet
socket.on('go', function () {
    maxApi.outletBang();
});

// when client recieves a 'fader' message from server, send out outlet
socket.on('fader', function (...data) {
    maxApi.outlet('fader', ...data);
});

// when client recieves a 'step' message from server, send out outlet
socket.on('step', function (step) {
    maxApi.outlet('step', step);
});
