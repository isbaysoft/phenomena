class App.Views.Application extends Backbone.View
  template: JST["backbone/templates/layout/application"]
  id: 'bbApplication'

  initialize: ->
    @render()

  render: ->
    @$el.html @template()
    return this
