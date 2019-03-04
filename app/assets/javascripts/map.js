function initMap() {
  var polygonCoords = [];
  var center =  {lat: 0, lng: 0 }
  var coords = document.getElementById('coords').getAttribute('data-coords');
  coords.split(',').forEach(function(point, index){
    all_coord = point.split(' ');
    console.log(parseFloat(all_coord[0]));

    lat = parseFloat(all_coord[0]);
    lng = parseFloat(all_coord[1]);
    polygonCoords.push({ lat: lat, lng: lng });
    center['lat'] += lat;
    center['lng'] += lng;
  });
  center['lat'] = center['lat']/polygonCoords.length;
  center['lng'] = center['lng']/polygonCoords.length;

  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 5,
    center: center,
    mapTypeId: google.maps.MapTypeId.SATELLITE
  });

  var polygon = new google.maps.Polygon({
    paths: polygonCoords,
    strokeColor: '#FF0000',
    strokeOpacity: 0.8,
    strokeWeight: 2,
    fillColor: '#FF0000',
    fillOpacity: 0.35,
  });
  polygon.setMap(map);
}
