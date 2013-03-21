class App.Models.CampaignCountry extends Backbone.RelationalModel

  defaults:
    country: null

class App.Collections.CampaignCountriesCollection extends Backbone.Collection
  model: App.Models.Country
