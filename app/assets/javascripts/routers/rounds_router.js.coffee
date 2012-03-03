class Game.Routers.Rounds extends Backbone.Router
  routes:
    '': 'index'
    'routes': 'index'
    'routes/index': 'index'

  index: ->
    alert "routes home page"

