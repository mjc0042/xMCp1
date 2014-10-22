'use strict';

angular.module('xMCp1App')
  .controller('MainCtrl',
    function ($scope, $stateParams, $state, $rootScope) {
      console.log("HEllo from mainctrl");
      
      $scope.user = 'Mike';   
      var categories = [
        { 'name' : 'Appliances'},
        { 'name' : 'Clothing'},
        { 'name' : 'Electronics'},
        { 'name' : 'Music'},
        { 'name' : 'Sports'}
     ];
     
     $scope.categories = categories;

     $scope.mainCtrlTestFunc = function() {
       $scope.greeting = "Hello " + $scope.user;
     }; 
});
