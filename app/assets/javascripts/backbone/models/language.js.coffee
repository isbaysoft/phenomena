class App.Models.Language extends Backbone.Model
  paramRoot: 'language'

  defaults:
    name: null

class App.Collections.LanguagesCollection extends Backbone.Collection
  model: App.Models.Language
  url: '/languages'
