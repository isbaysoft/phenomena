$ ->

  $(document).bind 'App:CampaignsTypehead:bind', ->
    $('.datepicker').off().datepicker
      format: 'mm-dd-yyyy'
      autoclose: true

    $('#countriesTypehead').off().typeahead
      items: 4
      source: (query, process) ->
        App.Data.Countries.map (item) ->
          name: item.get('name')
          toString: () -> item.get('name')
          toLowerCase: () -> this.name.toLowerCase()
          indexOf: (string) -> String.prototype.indexOf.apply(this.name, arguments)
          replace: (string) -> String.prototype.replace.apply(this.name, arguments)

    $('#languagesTypehead').off().typeahead
      items: 4
      source: (query, process) ->
        App.Data.Languages.map (item) ->
          name: item.get('name')
          toString: () -> item.get('name')
          toLowerCase: () -> this.name.toLowerCase()
          indexOf: (string) -> String.prototype.indexOf.apply(this.name, arguments)
          replace: (string) -> String.prototype.replace.apply(this.name, arguments)
      updater: (item) ->
        $('#languagesCountainer').append $('<li><span class="btn">'+item+'</span></li>')
        ''

