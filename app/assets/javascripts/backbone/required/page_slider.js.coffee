class window.PageSlider
  currentPageIndex: 0
  pages: []
  effectType: 'fade'

  constructor: (pageSelectors) ->
    # Define pages
    @pages = pageSelectors

    # Hide all defined pages
    $.each @pages, (idx, page) -> $(page).hide()

    # Define effects
    definedEffects = ['fade']
    @effectType = definedEffects[0] if _.isNaN(@effectType) || definedEffects.indexOf(@effectType) is -1
    if @effectType is 'fade' 
      @effectIn = 'fadeIn'
      @effectOut = 'fadeOut'

  nextPage: =>
    @currentPageIndex = 0 if ++@currentPageIndex >= @pages.length
    $(@pages[@currentPageIndex])

  currentPage: =>
    $(@pages[@currentPageIndex])

  push: (content) =>
    if @currentPage().is(':hidden')
      @currentPage().html(content).show()
    else
      @currentPage()[@effectOut] 'fast', =>
        @nextPage().html(content)[@effectIn] 'fast'
