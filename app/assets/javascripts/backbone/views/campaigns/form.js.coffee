App.Views.Campaigns ||= {}

class App.Views.Campaigns.Form extends Backbone.View
  template: JST["backbone/templates/campaigns/form"]

  id: 'bbCampaignForm'

  initialize: ->
    console.log @model.get('countries')
    @model.on 'add:countries', @renderCountry

  events:
    "submit form#campaigForm": "saveCampaign"
    "click #countyFormSubmit": "addContry"

  addContry: (e) ->
    $container = $('#countryFormContainer')
    country = $container.find('#countriesTypehead').val()

    languages = _.map $container.find('#languagesCountainer li > span'), (item) -> $(item).html()

    @model.get('countries').add {country: country, languages: languages}
    $container.modal('hide')

  saveCampaign: (e) ->
    e.preventDefault()
    @model.countries = []
    $('[name="countries_ids[]"]').each (i,v) =>
      @model.countries.push {id: $(v).val()}

    # Force update dates
    @model.set('date_start',$('#date_start').val())
    @model.set('date_end',$('#date_end').val())

    App.Data.Campaigns.create(@model,
      success: (data) =>
        App.Router.navigate "/campaigns", true
        @close()
    )

  close: ->
    @remove()
    @unbind()

  renderCountry: (item) =>
    console.log item
    itemView = new App.Views.Countries.Item {model: item}
    @$el.find('#countriesContainer').append itemView.render().el

  render: =>
    @$el.html @template({ model: @model.toJSON(), countries: App.Data.Countries })
    @model.get('countries').each @renderCountry
    @$("form").backboneLink @model
    @
