@portfolio = angular.module('portfolio', ['ngResource'])

@portfolio.config(($routeProvider, $locationProvider) ->
   $locationProvider.html5Mode(true)

   $routeProvider
      .when("/", {templateUrl: "pages/home", controller: "HomeController"})
      .otherwise({templateUrl: "Page not found. Something got fucked up."})
)

@portfolio.config ["$httpProvider", ($httpProvider) ->
  $httpProvider.defaults.headers.common["X-Requested-With"] = "XMLHttpRequest"
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
]

@portfolio.run(['$window', '$templateCache', ($window, $templateCache) -> 
   $templateCache.put(name, templateFunction) for name, templateFunction of $window.JST
])