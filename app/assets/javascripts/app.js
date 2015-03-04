(function(){
  var app = angular.module('mallesti', []);


 app.controller('CustomerController', ['$http', function($http){
  var scope = this;
  scope.customer = {};

  $http.get('/customers.json')
    .success(function(data){
      scope.customer = data.customers;
    })
}]);

})();