window.Game =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new Game.Routers.Rounds()
    Backbone.history.start(pushState: true)

$(document).ready ->
  Game.init()
