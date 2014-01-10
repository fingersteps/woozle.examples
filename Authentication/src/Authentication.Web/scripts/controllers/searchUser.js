'use strict';

angular.module('Woozle.DemoApplication')
    .controller('UserManagementSearchUserCtrl', function ($scope, $resource, UserService) {

        $scope.search = function () {
            UserService.getAllUsers(function(data) {
                $scope.users = data;
            });
        };
    });