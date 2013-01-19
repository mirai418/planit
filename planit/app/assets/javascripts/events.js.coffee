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

