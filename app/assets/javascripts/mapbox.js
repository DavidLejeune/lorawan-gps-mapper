<script>
//$( document ).ready(function() {
  mapboxgl.accessToken = 'pk.eyJ1IjoiZ3NtbWFuNyIsImEiOiJjaXZoeHpoMmcwMGFhMnVwazVqczQ4eTJrIn0.AklbOdAfUtA4DZmOWgthaw';
  var map = new mapboxgl.Map({
      container: 'map', // container id
      style: 'mapbox://styles/mapbox/streets-v9', //stylesheet location
      center: [-74.50, 40], // starting position
      zoom: 9 // starting zoom
  });
//}
</script>
