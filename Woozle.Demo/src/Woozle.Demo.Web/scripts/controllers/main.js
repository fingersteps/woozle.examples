angular.module('Woozle.DemoApplication')
    .controller('MainCtrl',
        ['$scope', 'LoginContextService', function ($scope, LoginContextService) {
            
            console.log('register login context!');
            $scope.$on('loginContextChanged', function() {
                var isLoggedIn = LoginContextService.isLoggedIn();
                $scope.showContent = isLoggedIn;
                if(isLoggedIn) {
                    $scope.mandator = LoginContextService.loggedInMandator();
                } else {
                    $scope.mandator = null;
                }
            });

            $scope.mandator =  LoginContextService.loggedInMandator();
            $scope.showContent = LoginContextService.isLoggedIn();
}]);
