(function() {
  define(function(require) {
    var Map;
    return Map = (function() {
      function Map() {}

      Map.prototype.greeting = 'Hello there';

      Map.prototype.init = function() {
        return console.log('INITED!');
      };

      return Map;

    })();
  });

}).call(this);

//# sourceMappingURL=../../build/coffeejs/client/map.js.map
