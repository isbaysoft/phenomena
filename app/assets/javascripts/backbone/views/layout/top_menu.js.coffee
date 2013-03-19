App.Events.TopMenu ||= _.clone(Backbone.Events)

class App.Views.TopMenu extends Backbone.View
  template: JST["backbone/templates/layout/top_menu_application"]
  el: '#topMenu'

  initialize: ->
    App.Events.TopMenu.on 'change', @updateState
    @render()

  # Setting active menu item up
  updateState: (menuItem) =>
    menuItem = '/#' if _.isUndefined menuItem 
    @$('li').removeClass 'active'
    parse = menuItem.match /^(\w+)/

    $currentMenuItem = if parse
      @$('li a[href*="' + parse[1] + '"]')
    else
      @$('li a[href="/#"]')

    $currentMenuItem.parent().addClass 'active'

  render: ->
    @$el.html @template
    @

