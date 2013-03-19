class App.Models.Country extends Backbone.RelationalModel
  paramRoot: 'country'

  defaults:
    name: null

  # sync: (action, object, callbacks, options) ->
  #   whiteObject = _.clone(object)
  #   whiteObject.attributes = _.pick(object.attributes, _.keys(@defaults))
  #   Backbone.sync(action, whiteObject, callbacks, options)

class App.Collections.CountriesCollection extends Backbone.Collection
  model: App.Models.Country
  url: '/countries'
