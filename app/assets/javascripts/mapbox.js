
$( document ).ready(function() {
  mapboxgl.accessToken = 'pk.eyJ1IjoiZ3NtbWFuNyIsImEiOiJjaXZoeHpoMmcwMGFhMnVwazVqczQ4eTJrIn0.AklbOdAfUtA4DZmOWgthaw';
  window.mymap = new mapboxgl.Map({
      container: 'map', // container id
      style: 'mapbox://styles/mapbox/streets-v9', //stylesheet location
      center: [3.75, 51], // starting position
      zoom: 9 // starting zoom
  });
  console.log(mymap);
  window.marker = new mapboxgl.Marker()
  .setLngLat([3.75, 51])
  .addTo(mymap);
})
