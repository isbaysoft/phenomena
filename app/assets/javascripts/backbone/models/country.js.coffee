class App.Models.Country extends Backbone.Model
  paramRoot: 'country'

  defaults:
    name: null

class App.Collections.CountriesCollection extends Backbone.Collection
  model: App.Models.Country
  url: '/countries'
