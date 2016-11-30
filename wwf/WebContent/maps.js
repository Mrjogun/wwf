function initMap() {
	var map = new google.maps.Map(document.getElementById('map'), {
		zoom: 9,
	});
	var geocoder = new google.maps.Geocoder();
	geocodeAddress(geocoder, map);
}

function geocodeAddress(geocoder, resultsMap) {
   	var address = "Fira Montjuïc Fira Gran Via LHospitalet, Barcelona, Spain";
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