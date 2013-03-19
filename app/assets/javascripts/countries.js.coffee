$ ->
  $('#countriesTypehead').typeahead
    items: 4
    display: 'name'
    source: (query, process) ->
      # regex = new RegExp( '(' + this.query + ')', 'gi' );
    # return item.replace( regex, "<strong>$1</strong>" );
      data = App.Data.Countries.filter (item) -> 
        true

      d = _.map data, (item) ->
        {
          id: item.get('id'),
          name: item.get('name'),
          toString: () -> JSON.stringify(this),
          toLowerCase: () -> this.name.toLowerCase(),
          indexOf: (string) -> String.prototype.indexOf.apply(this.name, arguments),
          replace: (string) -> String.prototype.replace.apply(this.name, arguments)
        }


    # highlighter: (item) ->
    #   item

    # matcher: (item) ->
    #   # if item.toLowerCase().indexOf(this.query.trim().toLowerCase()) != -1
    #   item

    # sorter: (items) ->
    #   # console.log items
    #   items

