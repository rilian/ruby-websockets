# Ruby WebSockets

Example of building a WebSocket server in Ruby

## Server

`ruby server.rb`

## Client

Open browser console and enter

```
var socket = new WebSocket("ws://localhost:4567");
socket.onmessage = function(event){console.log(event.data);};

socket.send("hello");
```

