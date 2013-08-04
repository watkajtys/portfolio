@portfolio.controller "HomeController", ($scope, $http, $window) ->

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

	$scope.date = Date.now()
	$scope.birth = new Date(1988, 9, 7)
	$scope.difference = (($scope.date - $scope.birth) / (1000*60*60*24))
	$scope.differenceDays = $window.Math.round($scope.difference)
	$scope.differenceYears = ($scope.difference * 0.00273791).toFixed(2)
