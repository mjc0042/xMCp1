'use strict';

var dependencies = ['ui.router'];

angular.module('xMCp1App', dependencies).config(
  function ($stateProvider, $httpProvider, $urlRouterProvider) {
    
    /*var AUTH_WIDGET = {
    	templateUrl: 'views/widgets/auth.html',
    	controller: 'AuthCtrl'
    };*/

    $stateProvider
      .state('main', {
        name: 'main',
        abstract: true,
        templateUrl: 'views/main.html',
        controller: 'MainCtrl'
      });
    
   
  });
