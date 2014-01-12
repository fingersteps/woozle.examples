'use strict';

angular.module('Woozle.DemoApplication')
    .controller('SearchProductsCtrl', function ($scope, $resource, ProductService) {

        $scope.search = function () {
            ProductService.getAllProducts(function(data) {
                $scope.products = data;
            });
        };
    });