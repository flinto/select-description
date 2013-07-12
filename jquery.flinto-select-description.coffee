# Created by Flinto, LLC
# https://www.flinto.com

jQuery.fn.selectDescription = (name) ->

  class SelectDescription
    constructor: (@$el) ->
      @$el = $(@$el)
      @$el.change @handleChange
      @hideAllDescriptions()
      @showCurrentDescription()

    descriptionForOption: (option) =>
      if option.data('description')?
        description = $("##{option.data('description')}")
      else
        description = $("##{option.attr('value')}")
      return description

    hideAllDescriptions: =>
      @$el.find('option').each (i, e) =>
        @descriptionForOption($(e)).hide()

    handleChange: (event) =>
      @hideAllDescriptions()
      @showCurrentDescription()

    showCurrentDescription: () =>
      option = @$el.find("option[value=#{@$el.val()}]")
      @descriptionForOption(option).show()

  $(this).each (i, e) =>
    new SelectDescription $(e)

  return $(this)