'use strict';

/* app module */

var jhipsterApp = angular.module('jhipsterApp', []);
jhipsterApp.controller('MyController', function ($scope){
	
	$scope.msg="Hello world";
	
	$scope.books=[
		{title:"t1"},
		{title:"t2"}
	];
	
});
