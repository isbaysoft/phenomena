class App.Models.Campaign extends Backbone.RelationalModel
  paramRoot: 'campaign'

  initialize: ->
    # @countries = []

  defaults:
    name: null

  relations: [{
    type: 'HasMany',
    key: 'countries',
    relatedModel: 'App.Models.Country',
    collectionType: 'App.Collections.CountriesCollection'
  }]

  # sync: (action, object, callbacks, options) ->
  #   whiteObject = _.clone(object)
  #   whiteObject.attributes = _.pick(object.attributes, _.keys(@defaults))
  #   whiteObject.attributes['countries_ids'] = @countries
  #   Backbone.sync(action, whiteObject, callbacks, options)

class App.Collections.CampaignsCollection extends Backbone.Collection
  model: App.Models.Campaign
  url: '/campaigns'
