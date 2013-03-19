App.Views.Campaigns ||= {}

class App.Views.Campaigns.Show extends Backbone.View
  template: JST["backbone/templates/campaigns/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
