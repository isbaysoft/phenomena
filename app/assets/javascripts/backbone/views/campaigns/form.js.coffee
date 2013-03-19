App.Views.Campaigns ||= {}

class App.Views.Campaigns.Form extends Backbone.View
  template: JST["backbone/templates/campaigns/form"]

  id: 'bbCampaignForm'

  events:
    "submit form": "save"
    "click .addCountry": 'addCountry'

  addCountry: ->
    $('#countries').append '<div>aaaaaaaaaaaaaaa</div>'

  save: (e) ->
    e.preventDefault()
    @model.countries = []
    $('[name="countries_ids[]"]').each (i,v) =>
      @model.countries.push {id: $(v).val()},
    App.Data.Campaigns.create(@model,
      success: (data) =>
        App.Router.navigate "/campaigns", true
        @close()
    )

  close: ->
    @remove()
    @unbind()

  render: ->
    console.log @model
    @$el.html @template({ model: @model.toJSON(), countries: App.Data.Countries })
    @$("form").backboneLink @model
    @
