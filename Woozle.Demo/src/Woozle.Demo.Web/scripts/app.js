'use strict';

angular.module('Woozle.DemoApplication', ['ngRoute', 'ngResource', 'restangular', 'ngCookies', 'pascalprecht.translate'])
.config(['RestangularProvider', function(RestangularProvider) {
         RestangularProvider.setBaseUrl("/");
     }])
    .config(['$routeProvider', '$httpProvider', function ($routeProvider, $httpProvider) { //Add parameters to inject always within string array, otherwise it wouldn't work after minification (http://docs.angularjs.org/tutorial/step_05)

        $routeProvider
            .when('/login',
            {
                templateUrl: 'views/login.html',
                controller:  'LoginCtrl'
            })
            .when('/main', {
                templateUrl: 'views/main.html',
                controller:  'MainCtrl'
            })
            .when('/SearchProductsV1', {
                templateUrl: 'views/searchProducts.html',
                controller: 'SearchProductsCtrl'
            })
            .otherwise({
                redirectTo: '/main'
            });

        $httpProvider.responseInterceptors.push("ResponseInterceptor");

    }])
    .config(['$translateProvider', function ($translateProvider) {
        $translateProvider.useStaticFilesLoader({
            prefix: 'translations/locale-',
            suffix: '.js'
        });
        $translateProvider.preferredLanguage('en');
    }])
    .factory('ResponseInterceptor', ["$q", "$log", "$location", function($q, $log, $location) {
            function success(response) {
               console.log("successful");
              return response;
             }
             function error(response) {
               var status = response.status;

               console.log(response);
               console.log('Response status: ' + status + '. ' + response);

               if(status == 401) {
                    console.log("Unauthorized!");
                    $location.path("/login");
               }

               return $q.reject(response); //similar to throw response;
              }

            return function(promise) {
                return promise.then(success, error);
            };
    }])
