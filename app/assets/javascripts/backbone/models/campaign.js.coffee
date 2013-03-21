class App.Models.Campaign extends Backbone.RelationalModel
  paramRoot: 'campaign'

  defaults:
    name: null
    countries: []
    date_start: null
    date_end: null

  relations: [{
    type: Backbone.HasMany,
    key: 'countries',
    relatedModel: 'App.Models.CampaignCountry',
    collectionType: 'App.Collections.CampaignCountriesCollection'
  }]

  sync: (action, object, callbacks, options) ->
    console.log object.attributes

    whiteObject = _.clone(object)
    whiteObject.attributes = _.pick(object.attributes, _.keys(@defaults))
    Backbone.sync(action, whiteObject, callbacks, options)

class App.Collections.CampaignsCollection extends Backbone.Collection
  model: App.Models.Campaign
  url: '/campaigns'
