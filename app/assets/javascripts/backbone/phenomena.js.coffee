#= require_self
#= require_tree ./required
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.App =
  Slider: {}
  Events: {}
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
  Data: {}
  init: ->
    App.Router = new App.Routers.AppRouter()
    Backbone.history.start()

$ ->
  window.Slider = new window.PageSlider(['#alfaContent', '#betaContent'])
  App.init()
