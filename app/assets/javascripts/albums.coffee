# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

document.addEventListener 'turbolinks:load', ->

  title = $('input[name="album[title]"]')[0]

  if !title.value
    title.setCustomValidity 'Cannot be null'

  title.addEventListener "input", (event) ->
    if !title.value
      title.setCustomValidity 'Cannot be null'
    else
      title.setCustomValidity ''
    return
