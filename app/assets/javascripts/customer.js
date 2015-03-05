(function(){
  var app = angular.module('mallesti-customer', []);

app.directive('customerTitle', function(){
  return {
    restrict: 'E',
    templateUrl: 'customer-title.html',
    controller: 'CustomerController',
    controllerAs: 'customerCtrl'
  };
});

app.controller('CustomerController', ['$http', function($http){
  var scope = this;
  scope.customer = [];

  $http.get('/customers.json')
    .success(function(data){
      scope.customer = data.customers;
    })

    scope.removeCustomer = function(cliente){
      if(confirm("¿estas seguro" + cliente.name + "?")){
      $http.delete("/customers/" + cliente.id + ".json")
       .success(function(){
        var index = scope.customer.indexOf(cliente);
        scope.customer.splice(index, 1);
       })
       }
    };
}]);


app.controller('NaboController',['$http', '$state', function($http, $state){
  var scope = this;
  scope.customer = {};

  $http.get('/customers/' + $state.params.su_nabo_gordo_id + '.json')
    .success(function(data){
      scope.customer = data.customer;
    })
}]);



})();