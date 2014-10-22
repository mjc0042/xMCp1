'use strict';

var dependencies = ['ui.router'];

angular.module('xMCp1App', dependencies).config(
  function ($stateProvider, $httpProvider, $urlRouterProvider) {

    console.log('app');
    $stateProvider
      .state('main', {
        name: 'main',
        url: '/',
        templateUrl: 'views/main.html',
        controller: 'MainCtrl'
      });
   
  });
