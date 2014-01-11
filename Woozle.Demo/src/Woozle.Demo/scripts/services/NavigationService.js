'use strict';

angular.module('Woozle.DemoApplication')
    .factory('NavigationService', function (Restangular) {

        return {
            getNavigation: function (success, error) {
                return Restangular.one('api/navigation?format=json')
                    .getList()
                    .then(success, error);
            }
        };
    });