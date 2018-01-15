app.controller('best_worst_contrl', function($scope,$rootScope,$http) {
    $rootScope.employee_designation = true;
     $scope.worst_project=[];
     $scope.best_project = [];
    $scope.get_worst_project_list=function(){

 $http({
        method : "GET",
        url : "JSON/worst_project.json"
    }).then(function mySuccess(response) {
    for(var i=0;i<response.data.length;i++)
    {
       $scope.worst_project.push(response.data[i]);

    }
    }, function myError(response) {
    });

};
$scope.get_worst_project_list();

$scope.get_best_project_list=function(){

 $http({
        method : "GET",
        url : "JSON/best_project.json"
    }).then(function mySuccess(response) {
    for(var i=0;i<response.data.length;i++)
    {
       $scope.best_project.push(response.data[i]);

    }
    }, function myError(response) {
    });

};
     $scope.get_best_project_list();    
});
