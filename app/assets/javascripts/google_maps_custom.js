function gmap_show(restaurant) {
  if ((restaurant.lat == null) || (restaurant.long == null) ) {    // validation check if coordinates are there
    return 0;
  }
handler = Gmaps.build('Google');
handler.buildMap({
    provider: {
      disableDefaultUI: true
      // pass in other Google Maps API options here
    },
    internal: {
      id: 'map'
    }
  },
  function(){
    markers = handler.addMarkers([
      {
        "lat": restaurant.lat,
        "lng": restaurant.long,
        "picture": {
          "url": "http://people.mozilla.com/~faaborg/files/shiretoko/firefoxIcon/firefox-32.png",
          "width":  32,
          "height": 32
        },
        "infowindow": "hello!"
      }
    ]);
    handler.bounds.extendWith(markers);
    handler.fitMapToBounds();
  }
);
}

