var minerals = angular.module('minerals', []);

minerals.controller('ore', ['$scope', '$http', function ($scope,$http) {
	$scope.fields = {
		tritanium : "0.00",
		megacyte : "0.00",
		zydrine : "0.00",
		pyerite : "0.00",
		nocxium : "0.00",
		isogen : "0.00",
		mexallon : "0.00",
		morphite : "0.00"
	},
	$scope.update_dt = "";
	$scope.userid = "";
	$scope.boxing = function(crt) {
		return function(item) {
			var box = $("#ore_boxes").prop('checked');
			if (box == true)
				return true;
			else if (box == false && item.box == 'N')
				return true;
			else
				return false;
  		};
	},
	$scope.change_q = function(item){
		//if (item == 0) item = '';
		for (var j=0;j<$scope.items.length;j++){
			if (item.id == $scope.items[j]['id'] && item.quantity == 0){
				$scope.items[j]['quantity'] = '';
			}
		}

		return item;
	},
	$scope.items = [],
	$scope.watch = function(){
		if ($scope.items.length > 0){
			$scope.sell_summ = "0.00";
			for (var j=0;j<$scope.items.length;j++){
    			$scope.$watch('items['+j+']', function(value,old) { console.log(value.quantity);
    				if (value.quantity != old.quantity){
    					if (value.quantity != '')
    						$scope.items[value.i].price = value.quantity * $scope.items[value.i].ruda_price;
    					else
    						$scope.items[value.i].price = 0;
    					//$scope.items[value.i].pak_in_jet = table.number_format(value.pak_in_jet,0,'',' ');
    					//$scope.sell_summ = parseFloat($scope.sell_summ) + parseFloat($scope.items[value.i].price);
    				}
				}, true);
    		}
		}
	},
	$scope.$watch('items', function(value){
		var sum = 0;
		for (var i=0;i<$scope.items.length;i++){ 
			sum += parseFloat($scope.items[i].price);
		}
		$scope.sell_summ = sum;
	}, true),
	$scope.$watch('fields',function(value){ 
		for (var i=0;i<$scope.items.length;i++){ 
			var pak_price = 0;
			$.each($scope.fields, function( index, value ) {
				value = value;
				pak_price += value * $scope.items[i][index];
			});
			var pak_in_jet = $scope.items[i]['pak_in_jet'];
			$scope.items[i]['pak_price'] = pak_price;
			$scope.items[i]['jet_price'] = pak_price*pak_in_jet;
			if ($scope.items[i]['batch'] != 0 && $scope.items[i]['batch'] != '' && $scope.items[i]['batch'] != null)
				$scope.items[i]['ruda_price'] =  pak_price/$scope.items[i]['batch'];
		}
	}, true),
	$http({
    	method: 'GET',
    	url: 'php/ajax/ore.php'
  	}).success(function (data, status, headers, config) {																			
    	$scope.items = data.data;
    	$scope.fields = data.prices;
    	$scope.update_dt = data.dt_update;
    	$scope.userid = data.userid;

    	$scope.watch();
  	}).error(function (data, status, headers, config) {
    
  	}),
  	$scope.update_boxes = function(){
  		/*var box = $("#ore_boxes").prop('checked');
  		$http({
    		method: 'GET',
    		url: 'php/ajax/ore.php?boxes='+box
  		}).success(function (data, status, headers, config) {
    		$scope.items = data;
    		$scope.watch();
  		}).error(function (data, status, headers, config) {
    
  		})*/
//$scope.$apply();
  	},
  	$scope.parse_ec_prices = function(){
  		$("#loader_ore").show();
  		$http({
    		method: 'GET',
    		url: 'php/ajax/ore_prices.php'
  		}).success(function (data, status, headers, config) {
  			$("#loader_ore").hide();
  			$scope.fields = data;
  		}).error(function (data, status, headers, config) {
    		$("#loader_ore").hide();
  		})
  	},
  	$scope.sell_summ = "0.00"
}]);

minerals.controller('ice', ['$scope', '$http', function ($scope,$http) {
	$scope.fields = {
		heavy_water : "0.00",
		liquid_ozone : "0.00",
		helium_isotopes : "0.00",
		strontium_clathrates : "0.00",
		hydrogen_isotopes : "0.00",
		oxygen_isotopes : "0.00",
		nitrogen_isotopes : "0.00"
	}
	$scope.update_dt = "";
	$scope.items = [],
	$scope.watch = function(){
		if ($scope.items.length > 0){
			$scope.sell_summ = "0";
			for (var j=0;j<$scope.items.length;j++){
				//$scope.items[j].pak_in_jet = table.number_format($scope.items[j].pak_in_jet,0,'',' ');
    			$scope.$watch('items['+j+']', function(value,old) {
    				if (value.quantity != old.quantity){
    					$scope.items[value.i].price = value.quantity * $scope.items[value.i].ruda_price;
    					//$scope.items[value.i].pak_in_jet = table.number_format(value.pak_in_jet,0,'',' ');
    					//if (old.price != '0.00')
    					//	$scope.sell_summ = (parseInt($scope.sell_summ) - old.price) + $scope.items[value.i].price;
    				}
				}, true);
    		}
		}
	},
	$scope.change_q = function(item){
		//if (item == 0) item = '';
		console.log(item.id);
		for (var j=0;j<$scope.items.length;j++){
			if (item.id == $scope.items[j]['id'] && item.quantity == 0){
				$scope.items[j]['quantity'] = '';
			}
		}

		return item;
	},
	$scope.$watch('items', function(value){
		var sum = 0;
		for (var i=0;i<$scope.items.length;i++){ 
			sum += parseFloat($scope.items[i]);
		}
		$scope.sell_summ = sum;
	}, true),
	$scope.$watch('fields',function(value){ 
		for (var i=0;i<$scope.items.length;i++){ 
			var pak_price = 0;
			$.each($scope.fields, function( index, value ) {
				pak_price += value * $scope.items[i][index];
			});
			$scope.items[i]['pak_price'] = pak_price;
			var pak_in_jet = $scope.items[i]['pak_in_jet'];
			$scope.items[i]['jet_price'] = pak_price*pak_in_jet;
			if ($scope.items[i]['batch'] != 0 && $scope.items[i]['batch'] != '' && $scope.items[i]['batch'] != null)
				$scope.items[i]['ruda_price'] =  pak_price/$scope.items[i]['batch'];
		}
	}, true),
	$http({
    	method: 'GET',
    	url: 'php/ajax/ice.php'
  	}).success(function (data, status, headers, config) {																				
    	$scope.items = data.data;
    	$scope.fields = data.prices;
    	$scope.update_dt = data.dt_update;
    	$scope.watch();
  	}).error(function (data, status, headers, config) {
    
  	}),
  	$scope.boxing = function(crt) {
		return function(item) {
			var box = $("#ice_boxes").prop('checked');
			if (box == true)
				return true;
			else if (box == false && item.box == 'N')
				return true;
			else
				return false;
  		};
	},
  	$scope.parse_ec_prices = function(){
  		$("#loader_ice").show();
  		$http({
    		method: 'GET',
    		url: 'php/ajax/ice_prices.php'
  		}).success(function (data, status, headers, config) {
  			$("#loader_ice").hide();
  			$scope.fields = data;
  		}).error(function (data, status, headers, config) {
    		$("#loader_ice").hide();
  		})
  	},
  	$scope.sell_summ = "0.00"
}]);

minerals.filter('format', function(){
	    return function (input, uppercase) {
        	return table.number_format(input,0,'',' ');
    }
});
minerals.filter('format2', function(){
	    return function (input, uppercase) {
        	return table.number_format(input,2,'.',' ');
    }
});

$(function(){
	table.init();
});

var table = {
	type : "",
	init : function(){
		$("#ore").addClass('active');
		if (table.getURLParameter('type') != ''){
			table.create_table_ore();
		}
		else{
			table.create_table_ice();
		}

		$(".btn").bind('click', function(){
			var id = $(this).attr('id');
			table.type = id;
			$("#tab").empty();
			switch (id){
				case 'ore' : table.create_table_ore();$(".btn").removeClass('active');$(this).addClass('active'); break;
				case 'ice' : table.create_table_ice();$(".btn").removeClass('active');$(this).addClass('active'); break;
			}
		});
		$("#ore_count, #ice_count").bind('click', function(){
			alert('AAA');
			$(this).val('');
		});
	},
	getURLParameter : function(name){
		return decodeURIComponent((new RegExp('[?|&]' + name + '=' + '([^&;]+?)(&|#|;|$)').exec(location.search)||[,""])[1].replace(/\+/g, '%20'))||null
	},
	create_table_ore : function(){
		$("#ice_tab").hide();
		$("#ore_tab").show();
	},
	create_table_ice : function(){
		$("#ore_tab").hide();
		$("#ice_tab").show();
	},
	number_format : function( number, decimals, dec_point, thousands_sep ) {	
		var i, j, kw, kd, km;

		if( isNaN(decimals = Math.abs(decimals)) ){
			decimals = 2;
		}
		if( dec_point == undefined ){
			dec_point = ",";
		}
		if( thousands_sep == undefined ){
			thousands_sep = ".";
		}

		i = parseInt(number = (+number || 0).toFixed(decimals)) + "";

		if( (j = i.length) > 3 ){
			j = j % 3;
		} else{
			j = 0;
		}

		km = (j ? i.substr(0, j) + thousands_sep : "");
		kw = i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + thousands_sep);

		kd = (decimals ? dec_point + Math.abs(number - i).toFixed(decimals).replace(/-/, 0).slice(2) : "");

		return km + kw + kd;
	}

}
