(function() {
  define(function(require) {
    var WsWebSocketConnector;
    return WsWebSocketConnector = (function() {
      function WsWebSocketConnector() {}

      WsWebSocketConnector.prototype.start = function() {
        var WebSocketServer, wss;
        console.log('* Starting socket services');
        WebSocketServer = require('ws').Server;
        wss = new WebSocketServer({
          port: 9876
        });
        return wss.on('connection', function(ws) {
          var header;
          ws.on('message', function(message) {
            var channel, err, jmsg;
            try {
              jmsg = JSON.parse(message);
              if (jmsg.mtype) {
                channel = listeners[jmsg.mtype];
                return _.each(channel, function(listener) {
                  return listener.onmessage(ws, jmsg);
                });
              }
            } catch (_error) {
              err = _error;
              return console.log(err.stack);
            }
          });
          header = {
            mtype: 'CONNECT',
            name: 'C H A T S T E R O I D S : World Server',
            version: 0.1,
            id: clientId++
          };
          return ws.send(JSON.stringify(header));
        });
      };

      return WsWebSocketConnector;

    })();
  });

}).call(this);

//# sourceMappingURL=../build/coffeejs/server/ws-websocket-connector.js.map
