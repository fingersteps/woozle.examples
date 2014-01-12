'use strict';

angular.module('Woozle.DemoApplication')
    .factory('ProductService', function (Restangular) {
        return {
            getAllProducts: function(success) {
                return Restangular.one('api/products?format=json')
                    .getList()
                    .then(success);
            }
        };
    });