class App.Models.Language extends Backbone.Model
  paramRoot: 'language'

  defaults:
    name: null

  # sync: (action, object, callbacks, options) ->
  #   whiteObject = _.clone(object)
  #   whiteObject.attributes = _.pick(object.attributes, _.keys(@defaults))
  #   Backbone.sync(action, whiteObject, callbacks, options)

class App.Collections.LanguagesCollection extends Backbone.Collection
  model: App.Models.Language
  url: '/languages'
