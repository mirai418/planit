# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

root = exports ? this
root.putDayInNext = (elem) ->
  strDate = $(elem).val().split('/')
  if (strDate.length > 1)
    date = new Date(strDate[2], strDate[1]-1, strDate[0])
    lookup = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday"]
    $(elem).next().text(date.toDateString())


root.loclen = 0

jQuery(document).ready(() ->
  location = jQuery("#event_location")
  suggestion = jQuery("#suggestion")
  location.keypress( (ke) ->
    if (ke.keyCode == 13)
      ke.preventDefault()
      search()
      return false
  )

  location.keyup( (ke) ->
    len = Math.floor(location.val().length/5)
    if (ke.keyCode == 13)
      return true
    else if location.val().length > 4
      if root.loclen != len
        root.loclen = len
        autofill()
        suggestion.css("display", "inline-block")
    else
      root.loclen = len
      suggestion.html("");
      suggestion.hide()
    )
)
