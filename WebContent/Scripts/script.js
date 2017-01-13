var geocoder;

(function initialize() {
  geocoder = new google.maps.Geocoder();
})();


function setAddress(address){
	
	return false;
}


function codeLatLng(lat, lng) {
  var address = '';
  
  var latlng = new google.maps.LatLng(lat, lng);
  geocoder.geocode({'latLng': latlng}, 
	function(results, status) {
    if (status == google.maps.GeocoderStatus.OK) {
      var index = 1;
	  if(results) {
        index = results.length-4;
	  }
      if (results[index]) {
         var addr_componenets = results[index].address_components;
		for (var i=0; i<addr_componenets.length; i++) {
			var addr_componenets = results[i].address_components;
			address+=addr_componenets[i].long_name+", ";
			}
		document.frmEnquiry.pindetail.value=address;
		alert("Address after set:: "+document.frmEnquiry.getElementsByTagName("pindetail").value);
		alert("nnnn"+document.frmEnquiry.pindetail.value);
		document.frmEnquiry.submit();
		
      } else {
        alert('No results found');
      }
    } else {
      alert('Geocoder failed due to: ' + status);
    }
  });
  //address='';
}

function getLatLong(address){    
  geocoder.geocode({'address':address},function(results, status){
    if (status == google.maps.GeocoderStatus.OK) {
      codeLatLng(results[0].geometry.location.lat(), results[0].geometry.location.lng()); 
    } else {
      alert("Geocode was not successful for the following reason: " + status);
    }
  });
}

function getLocationDetails() {
var pin=document.getElementById("pin").value;
alert(pin);
 getLatLong(pin);
}

//$(document).ready(function() {
  //$('input#pin').on('click', function() {
    //var address = $('#pin').val();
   // getLocationDetails(address);
  //});
//});