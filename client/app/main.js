require.config({
  shim: {
    angularjs: {
      exports: "angular"
    }
  },
  paths: {
    "angular-leaflet": "../lib/angular-leaflet/dist/angular-leaflet-directive",
    angularjs: "../lib/angularjs/angular",
    bootstrap: "../lib/bootstrap/dist/js/bootstrap",
    requirejs: "../lib/requirejs/require"
  },
  packages: [

  ]
});

require(['app'], function(app) { });
