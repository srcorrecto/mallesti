(function(){
  var app = angular.module('mallesti', ['ui.router', 'templates','mallesti-customer']);
 
 // Aquí establecemos los estados de nuestra applicación.

 app.config(function($urlRouterProvider, $stateProvider){
  // Para las urls que no se encuentren, redirigimos a la raíz.
  $urlRouterProvider.otherwise("/home");
  // Aquí establecemos los estados de nuestra applicación.
  $stateProvider
    .state("home", {
      url: "/home",
      templateUrl: "home.html",
      controller: "CustomersController",
      controllerAs: "customersCtrl"
    })

 .state("customer", {
        url: "/customers/:cliente_id",
        templateUrl: "customerInfo.html",
        controller: "CustomerController",
        controllerAs: "customerCtrl"
      })
  });

})();