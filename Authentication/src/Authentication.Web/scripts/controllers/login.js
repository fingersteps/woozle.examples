angular.module('Woozle.DemoApplication')
    .controller('LoginCtrl',
        ['$rootScope', '$scope', '$location', '$window',
            'AuthenticationService', 'UserService', 'MandatorSelectionService', 'LoginContextService',
            function ($rootScope, $scope, $location, $window,
                AuthenticationService, UserService, MandatorSelectionService, LoginContextService) {

                $scope.user = {"username" : "user1", "password" : "pass1"};
                $scope.rememberme = true;
                $scope.showProgress = false;
                $scope.login = function (user, mandator) {
                $scope.showProgress = true;
                $scope.master = angular.copy(user);

                AuthenticationService.login(user,function()
                {
                    console.log("sucessfully logged in");
                    console.log(user);
                    $scope.username = user.username;

                    if ($scope.mandator != null) {
                        $scope.selectMandator($scope.mandator);
                        $scope.showProgress = false;
                    }

                    UserService.getLoggedInUser(function(loggedInUser) {
                           LoginContextService.setLoginData(loggedInUser.User, mandator);   
                           $location.path('/main')
                    },
                    function(error) {
                        console.log("error - perhaps mandator selection?");
                        console.log(error);
                        
                        if (error.status == 601) {
                            if (mandator == null) {
                                MandatorSelectionService.getAssignedMandators(function(mandators) {
                                    console.log("getting assigned mandators.");
                                    console.log(mandators);
                                    $scope.mandators = mandators;
                                    $scope.mandator = mandators[0];
                                    $scope.showProgress = false;
                                }, function(error) {
                                    console.log("error at getting mandators");
                                    console.log(error);
                                });
                            } else {
                                console.log($scope.selectMandator);
                                $scope.selectMandator(mandator);
                                $scope.showProgress = false;
                            }
                        }
                    });
                }, function(result) {
                    console.log(result);
                    $rootScope.error = "Failed to login";
                });
               
            };
            $scope.selectMandator = function (mandator) {
                MandatorSelectionService.selectMandator($scope.mandator,
                                 function () {
                                     console.log("mandator successfully selected.");
                                     UserService.getLoggedInUser(function(loggedInUser) {
                                         LoginContextService.setLoginData(loggedInUser.User, mandator);   
                                         $location.path('/searchUser')
                                     }, function(error){}
                                     )},
                                 function (error) {
                                     console.log("error @ mandator selection.");
                                     console.log(error);
                                 }
                             );
            };

            $scope.showProgressbar = function () {
                console.log("showprogress");
                console.log($scope.showProgress);
                return $scope.showProgress;
            };

            $scope.showMandatorSelection = function() {
                    var show = false;

                    if ($scope.mandators != null) {
                        show = true;
                    }
                    return show;
            };

            $scope.loginOauth = function(provider) {
                $window.location.href = 'api/auth/' + provider;
            };

}]);
