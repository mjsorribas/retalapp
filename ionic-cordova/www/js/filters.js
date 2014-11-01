angular.module('starter', ['ionic'])
/*----------------
 /*FILTERS:
 /*---------------*/
.filter('upperCase', function(){
	return function(text){
		return text.toUpperCase();
	};
});