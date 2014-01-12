'use strict';
angular.module('Woozle.DemoApplication')
    .controller('NavigationCtrl',  ['$scope', 'LoginContextService', 'NavigationService',
        function ($scope, LoginContextService, NavigationService) {
        $scope.oneAtATime = true;
        $scope.showNavigation = false;
        $scope.loggedInUser = null;
        LoginContextService.refreshLoginContext();

        $scope.$on('loginContextChanged', function() {

            var isLoggedIn = LoginContextService.isLoggedIn();
            if(isLoggedIn) {
                    $scope.showNavigation = isLoggedIn;
                    $scope.loggedInUser = LoginContextService.loggedInUser();
                    NavigationService.getNavigation(function(navigation) {
                                        console.log("getting navigation.");
                                        console.log(navigation);
                                        $scope.modules = navigation;
                                    }, function(error) {
                                        console.log("error at getting navigation");
                                        console.log(error);
                                    });

            } else {
                $scope.showNavigation = false;
                $scope.loggedInUser = null;
            }
        });

        $scope.logout = function () {
            console.log("logout in navigation");
            LoginContextService.logout();
        };
    }]);
