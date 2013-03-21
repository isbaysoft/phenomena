App.Views.Countries ||= {}

class App.Views.Countries.Item extends Backbone.View
  template: JST["backbone/templates/countries/item"]

  tagName: "div"

  render: ->
    @el.innerHTML = @template @model
    @
