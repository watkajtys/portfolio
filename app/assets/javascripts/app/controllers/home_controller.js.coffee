@portfolio.controller "HomeController", ($scope, $http) ->

	$scope.positionData = "home"
	console.log $scope.positionData
	$scope.about = ->
		$scope.positionData = "about"
		console.log $scope.positionData

	$scope.home = -> 
		$scope.positionData = "home"
		console.log $scope.positionData

	$scope.portfolio = ->
		$scope.positionData = "portfolio"
		console.log $scope.positionData

	$scope.links = -> 
		$scope.positionData = "links"
		console.log $scope.positionData