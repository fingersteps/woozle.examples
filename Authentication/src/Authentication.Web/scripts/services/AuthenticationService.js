'use strict';

angular.module('Woozle.DemoApplication')
    .factory('AuthenticationService', function (Restangular) {

        return {
            login: function(user, success, failed) {
                var authentication = Restangular.all('api/Auth/credentials?format=json');

                var data =
                {
                    "UserName": user.username,
                    "Password": user.password
                };

                // POST /accounts
                var result = authentication.post(data).then(success, failed);
                console.log(result);
                console.log("headers set!");
            },
            logout: function (success, failed) {
                var authentication = Restangular.all('Auth/logout');
                var result = authentication.get().then(success, failed);
            }
        };
    });