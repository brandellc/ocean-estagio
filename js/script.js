var newsApp = angular.module('newsApp', ['ngCookies']);


newsApp.controller('newsController', function($scope, $http, $window, $cookies){
    $scope.news = {
        author:"",
        title:"",
        img:"imgs/default.jpg",
        description:""
    }

    $scope.submit = function(){
        var obj = $scope.news;
        obj.date = new Date();
        obj.type = 1;
        $http.post('php/newsController.php',obj).
        success(function(data, status){
            if(data == "1"){
                alert('Informação cadastrada com sucesso !');
                $window.location.href = 'index.html';
            }
            reset();
        });
    } 
 
    $scope.reset = function(){
        var obj = $scope.news;
        obj.author = "";
        obj.title = "";
        obj.description = "";
        obj.img = "imgs/default.jpg";
    }
    $scope.nArray = [];    
    $scope.getHotNews = function(){
        params = {};
        params.type = 3; 
        $http.post('php/newsController.php', params).
        success(function(data, status){
            $scope.nArray = data;
           
            angular.forEach($scope.nArray, function(item, index){
                var s = item.description.split(" ");
                var count;
                if (s.length <= 32){
                    count = s.length;
                }
                else {
                    count = 32;
                }

                item.snippet = "";
                for (var i = 0; i < count; i++){
                    item.snippet += " "+s[i]; 
                }
           }); 
        });
    }

    $scope.putData = function(item){
            $cookies.put('data', item.id);
    }


    $scope.retriveData = function(){
            params = {};
            params.id = $cookies.get('data');
            params.type = 2;
            $http.post('php/newsController.php', params).
            success(function(data, status){
                console.log(data);
                $scope.news = data;
            });
    }
});

