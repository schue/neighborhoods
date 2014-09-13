(function() {
  define(function(require) {
    var Dash;
    return Dash = (function() {
      function Dash() {}

      Dash.prototype.greeting = 'Hello there';

      Dash.prototype.init = function() {
        return console.log('INITED!');
      };

      return Dash;

    })();
  });

}).call(this);

//# sourceMappingURL=../../build/coffeejs/client/dash.js.map
