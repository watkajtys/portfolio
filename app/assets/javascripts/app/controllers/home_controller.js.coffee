@portfolio.controller "HomeController", ($scope, $http, $window) ->

	$scope.positionData = { position: "home", color: "#db6549" }
	console.log $scope.positionData

	$scope.home = -> 
		$scope.positionData = { position: "home", color: "#db6549" }
		console.log $scope.positionData

	$scope.about = ->
		$scope.positionData = { position: "about", color: "#3a93a8" }
		console.log $scope.positionData

	$scope.portfolio = ->
		$scope.positionData = { position: "portfolio", color: "#756f5e" }
		console.log $scope.positionData

	$scope.links = -> 
		$scope.positionData = { position: "links", color: "#56b2e0" }
		console.log $scope.positionData

	$scope.date = Date.now()
	$scope.birth = new Date(1988, 9, 7)
	$scope.difference = (($scope.date - $scope.birth) / (1000*60*60*24))
	$scope.differenceDays = $window.Math.round($scope.difference)
	$scope.differenceYears = ($scope.difference * 0.00273791).toFixed(2)


	$scope.images = [
   	{
      	title : "Logo Design",
      	use	: "Mockup for TDot Marketing News Letter",
      	notes : "InDesign",
      	image : "http://monicao.s3.amazonaws.com/bitmaker/house.jpg",
      	link  : ""
     	},
     	{ 
     		title : "News Letter Design",
      	use	: "Responsive Email News Letter for Functional Imperative",
      	notes : "Fully Responsive Email Design",
      	image : "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg",
      	link  : ""
     },
     {
      	title : "Inspire Board",
      	use	: "Art Project",
      	notes : "MongoDB database, Rails Server, Angular.JS 1.1.5 (edge) frontend",
      	image : "http://monicao.s3.amazonaws.com/bitmaker/girl.jpg",
      	link  : "www.inspireboard.org"
     },
     {
     		title : "IWeg",
     		use   : "Client Project at Functional Imperative", 
     		notes : "Added Server Side Administrative Features", 
     		image : "",
     		link  : "www.iweg.org"
     },
     {
   		title : "OutRank",
   		use   : "Rogers OutRank",
   		notes : "Built out Administrative Back End, wired entire site to new CMS solution, Rebuilt front end to display custom content", 
   		image : "",
   		link  : "www.rogersoutrank.com" 
     }
   ]

   console.log $scope.images

