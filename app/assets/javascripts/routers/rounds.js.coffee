class Game.Routers.Rounds extends Backbone.Router
  routes:
    'rounds': 'index'
    'rounds/index': 'index'

  index: ->
    alert "rounds home page"

