Listabeta.Startups ?= {}

Listabeta.Startups.Edit =
  init: ->
    pitch = $(".js-pitch-count-char")
    pitchValue = $('.js-pitch-count-char-value')
    description = $(".js-description-count-char")
    descriptionValue = $(".js-description-count-char-value")
    # Change color on load
    if (75 - $(pitch).val().length) <= 0
      $(pitchValue).css('color', 'red')
    else
      $(pitchValue).css('color', 'black')

    if (500 - $(description).val().length) <= 0
      $(descriptionValue).css('color', 'red')
    else
      $(descriptionValue).css('color', 'black')

    # Execute when key is pressed
    $(pitch).keyup ->
      current = 75 - $(this).val().length
      # Turn the number red
      if current <= 0
        $(pitchValue).css('color', 'red')
      else
        $(pitchValue).css('color', 'black')
      # calculate and apply value
      $(pitchValue).html(current)

    # Execute when key is pressed
    $(description).keyup ->
      current = 500 - $(this).val().length
      # Turn the number red
      if current <= 0
        $(descriptionValue).css('color', 'red')
      else
        $(descriptionValue).css('color', 'black')
      # calculate and apply value
      $(descriptionValue).html(current)

  modules: -> []