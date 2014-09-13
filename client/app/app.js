(function() {
  define(function(require) {
    var angular, app;
    angular = require('angularjs');
    app = angular.module('neighborhood', []);
    app.controller('DashController', require('dash'));
    app.controller('MapController', require('map'));
    return app;
  });

}).call(this);

//# sourceMappingURL=../../build/coffeejs/client/app.js.map
