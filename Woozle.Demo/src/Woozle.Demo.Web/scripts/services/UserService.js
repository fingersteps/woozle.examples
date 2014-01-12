'use strict';

angular.module('Woozle.DemoApplication')
    .factory('UserService', function (Restangular) {
        return {
            getAllUsers: function(success) {
                return Restangular.one('api/users?format=json')
                    .getList()
                    .then(success);
            },

            getLoggedInUser: function (success, error) {
                return Restangular.one('api/users').one('0').get().then(success, error);
            }
        };
    });