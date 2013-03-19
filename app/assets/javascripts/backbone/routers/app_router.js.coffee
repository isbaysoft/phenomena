class App.Routers.AppRouter extends Backbone.Router
  initialize: (options) ->

    App.Data.Campaigns = new App.Collections.CampaignsCollection()
    App.Data.Campaigns.fetch async: false

    App.Data.Countries = new App.Collections.CountriesCollection()
    App.Data.Countries.fetch async: false

    App.Data.Languages = new App.Collections.LanguagesCollection()
    App.Data.Languages.fetch async: false

    new App.Views.TopMenu

    Backbone.history.bind "all", (route, router) ->
      App.Events.TopMenu.trigger 'change', Backbone.history.fragment

  routes:
    '': 'index'
    'campaigns*subroute': 'campaigns'

  index: ->
    view = new App.Views.Application()
    Slider.push view.render().el

  campaigns: ->
    unless App.Routers.Campaigns
      App.Routers.Campaigns = new App.Routers.CampaignsRouter('campaigns')


