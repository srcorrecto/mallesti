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
}]);


})();