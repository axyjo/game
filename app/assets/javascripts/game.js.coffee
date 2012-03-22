window.Game =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new Game.Routers.Rounds()
    Backbone.history.start(pushState: true)

    map = new L.Map 'map-container'
    cloudmade = new L.TileLayer 'http://{s}.tile.cloudmade.com/d61c80c52d2a4c999d39d804936296bd/997/256/{z}/{x}/{y}.png', {
      attribution: 'Map data &copy; OpenStreetMap',
      minZoom: 3
      maxZoom: 9
    }

    london = new L.LatLng 51.505, -0.09

    map.setView(london, 8).addLayer cloudmade

$(document).ready ->
  Game.init()
  $(window).resize ->
    $("#map-container").height $(window).height() - $(".navbar").height()
  $(window).resize()
