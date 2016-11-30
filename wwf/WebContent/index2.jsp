<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Geocoding service</title>
    
    <script>
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
    </script>
    <a href="https://maps.googleapis.com/maps/api/js?key=AIzaSyAc6nmQ1eR8JJ2Jv45fkMXAKmjzyK1jNSs&signed_in=true&callback=initMap">hello</a>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAc6nmQ1eR8JJ2Jv45fkMXAKmjzyK1jNSs&signed_in=true&callback=initMap"
        async defer></script>
  </head>
  <body>
    <div id="map" style="width: 400px; height: 400px"></div> 
  </body>
</html>