App.Views.Campaigns ||= {}

class App.Views.Campaigns.Index extends Backbone.View
  template: JST["backbone/templates/campaigns/index"]

  id: 'bbCampaigns'

  initialize: () ->
    App.Data.Campaigns.on 'add reset destroy', @render

  renderItem: (item) =>
    itemView = new App.Views.Campaigns.Item {model: item}
    @$el.append itemView.render().el

  render: =>
    @$el.html @template()
    App.Data.Campaigns.each @renderItem
    @
