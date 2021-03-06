//code for creating the map on the page
$( document ).on("turbolinks:load",function() {
  mapboxgl.accessToken = 'pk.eyJ1IjoiZ3NtbWFuNyIsImEiOiJjaXZoeHpoMmcwMGFhMnVwazVqczQ4eTJrIn0.AklbOdAfUtA4DZmOWgthaw';
  window.mymap = new mapboxgl.Map({
      container: 'map', // container id
      style: 'mapbox://styles/mapbox/streets-v9', //stylesheet location
      center: [3.2, 51.2], // starting position
      zoom: 9 // starting zoom
  });
  console.log(mymap);

//code to get data out of the database
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

            var coordinates = [];
            $.each(result, function(i, field){

              coordinates.push ([
                field.longitude,
                field.latitude
              ])


                 });
                 console.log(coordinates);
//add line to each point

  window.mymap.addSource("route", {
    "type": "geojson",
    "data": {
      "type": "Feature",
      "properties": {},
      "geometry": {
        "type": "LineString",
        "coordinates":
        coordinates

      }
    }
  });
  //add line to the map
  window.mymap.addLayer({
    "id": "route",
    "type": "line",
    "source": "route",
    "layout": {
      "line-join": "round",
      "line-cap": "round"
    },
    "paint": {
      "line-color": "#888",
      "line-width": 8
    }
  });


   //add markers to the map
              $.each(result, function(i, field){
                    // console.log(field.longitude);
                    window.marker = new mapboxgl.Marker()
                    .setLngLat([field.longitude ,field.latitude])
                    .addTo(mymap);

                 });
          });
      });

})



// http://localhost:3000/data.json
