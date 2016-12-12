

$( document ).on("turbolinks:load",function() {
  mapboxgl.accessToken = 'pk.eyJ1IjoiZ3NtbWFuNyIsImEiOiJjaXZoeHpoMmcwMGFhMnVwazVqczQ4eTJrIn0.AklbOdAfUtA4DZmOWgthaw';
  window.mymap = new mapboxgl.Map({
      container: 'map', // container id
      style: 'mapbox://styles/mapbox/streets-v9', //stylesheet location
      center: [3.75, 51], // starting position
      zoom: 9 // starting zoom
  });
  console.log(mymap);


  $(document).ready(function(){
          $.getJSON("/data.json", function(result){
            $.each(result, function(i, field){







              console.log(field.longitude);
              window.marker = new mapboxgl.Marker()
              .setLngLat([field.longitude,field.latitude])
              .addTo(mymap);

           });
          });
      });















})



// http://localhost:3000/data.json
