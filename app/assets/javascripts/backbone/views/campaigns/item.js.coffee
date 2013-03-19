App.Views.Campaigns ||= {}

class App.Views.Campaigns.Item extends Backbone.View
  template: JST["backbone/templates/campaigns/item"]

  tagName: "tr"

  events:
    "click .btn.remove": "destroy"

  destroy: (e) ->
    e.preventDefault()
    @model.destroy()
    @remove()

  render: ->
    @el.innerHTML = @template @model.toJSON()
    @
