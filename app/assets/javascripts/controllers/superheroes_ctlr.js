(function() {
  "use strict";

  angular.module("app").controller("superheroesCtrl", ['$scope', '$http', function($scope, $http) {
    function setup() {
        $http.get('/api/v1/superheroes.json').then(function(response){
        console.log(response)
        $scope.superheroes = response.data;
      });
    }
    setup();

    $scope.addSuperhero = function(superhero) {
      var superhero = {
        superhero_name: $scope.superheroName,
        superhero_power: $scope.superheroPower
      };
      console.log(superhero)
      $http.post('/api/v1/superheroes.json', superhero).success(function(response) {
        // $scope.message = response.data.message;
        console.log(response)
        $scope.superheroes.push(superhero);
        $scope.superhero = {};
      })
      .error(function(response){
        console.log(response)
        // $scope.message = $scope.error.full_messages
      })
    };
    $scope.toggleOrder = function(orderAttribute) {
      if (orderAttribute != $scope.orderAttribute) {
        $scope.isReverse = false;
      } else {
        $scope.isReverse = !$scope.isReverse;
      }
        $scope.orderAttribute = orderAttribute;
    }
  }]);
})();
