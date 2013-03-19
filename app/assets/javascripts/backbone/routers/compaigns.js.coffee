class App.Routers.CampaignsRouter extends Backbone.SubRoute
  initialize: (options) ->

  routes:
    '': 'index'
    'new': 'new'
    ':id/edit' : 'edit'

  index: ->
    @indexView = new App.Views.Campaigns.Index()
    Slider.push @indexView.render().el

  new: ->
    @formView.close() if @formView
    @formView = new App.Views.Campaigns.Form { model: new App.Data.Campaigns.model() }
    Slider.push @formView.render().el

  edit: (id) ->
    @formView.close() if @formView
    @formView = new App.Views.Campaigns.Form { model: App.Data.Campaigns.get(id) }
    Slider.push @formView.render().el
