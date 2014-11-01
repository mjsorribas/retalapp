angular.module('starter', ['ionic'])

.factory('UsersModel',[ '$http', 'configFactory', function($http, configFactory){
		return {
			findAll :  function(){
				return $http.get(configFactory.server.url+'/api_users/')
				.error(function(){
					//console.log('UsersModel:error');
				})
				.success(function(data){
					//console.log('UsersModel:success');
				});
			}
		};
	}
]);