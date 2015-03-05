(function(){
  var app = angular.module('mallesti', ['ui.router', 'templates','mallesti-customer']);
 

 app.config(function($urlRouterProvider, $stateProvider){
  // Para las urls que no se encuentren, redirigimos a la raíz.
  $urlRouterProvider.otherwise("/home");
  // Aquí establecemos los estados de nuestra applicación.
  $stateProvider
    .state("home", {
      url: "/home",
      templateUrl: "home.html",
      controller: "CustomerController",
      controllerAs: "customerCtrl"
    })

      .state("su_nabo_gordo", {
        url:"/home/:su_nabo_gordo_id",
        templateUrl:"su_nabo_gordo.html",
        controller: "NaboController",
        controllerAs: "naboCtrl"
      })

});




})();