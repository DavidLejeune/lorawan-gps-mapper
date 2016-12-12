

$( document ).on("turbolinks:load",function() {
  mapboxgl.accessToken = 'pk.eyJ1IjoiZ3NtbWFuNyIsImEiOiJjaXZoeHpoMmcwMGFhMnVwazVqczQ4eTJrIn0.AklbOdAfUtA4DZmOWgthaw';
  window.mymap = new mapboxgl.Map({
      container: 'map', // container id
      style: 'mapbox://styles/mapbox/streets-v9', //stylesheet location
      center: [3.75, 51], // starting position
      zoom: 9 // starting zoom
  });
  console.log(mymap);
for (var i = 0; i < 10; i++) {

  $(document).ready(function(){
      var sensor_id = $("#map").data('sensor-id');
      var path = "/data.json";
      if(sensor_id) {
        path = "/sensors/" + sensor_id + ".json";
      }
          $.getJSON(path, function(result){
            if(sensor_id){
              result = result.show_since;
            }
            $.each(result, function(i, field){

                    // console.log(field.longitude);
                    window.marker = new mapboxgl.Marker()
                    .setLngLat([field.longitude,field.latitude])
                    .addTo(mymap);

                 });
          });
      });

}
  window.marker = new mapboxgl.Marker()
  .setLngLat([3.75, 51])
  .addTo(mymap);

})



// http://localhost:3000/data.json
