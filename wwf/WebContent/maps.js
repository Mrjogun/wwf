function initMap(address,num) {
	var map = new google.maps.Map(document.getElementById('map'+num), {
		zoom: 9,
	});
	var geocoder = new google.maps.Geocoder();
	geocodeAddress(geocoder, map, address);
}

function geocodeAddress(geocoder, resultsMap, myadd) {
	var address;
	if(myadd!=undefined){
		address = myadd;
	}else{
		address = "광교산로 154-42";
	}
	geocoder.geocode({'address': address}, function(results, status) {
		if (status === google.maps.GeocoderStatus.OK) {
			resultsMap.setCenter(results[0].geometry.location);
			var marker = new google.maps.Marker({
				map: resultsMap,
				position: results[0].geometry.location
			});
		}else {
			alert('Geocode was not successful for the following reason: ' + status);
		}
	});
}