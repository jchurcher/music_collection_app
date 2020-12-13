# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

document.addEventListener 'turbolinks:load', ->

  name = $('input[name="artist[name]"]')[0]

  console.log(name.value)

  if !name.value
    name.setCustomValidity 'Cannot be null'

  name.addEventListener "input", (event) ->
    if !name.value
      name.setCustomValidity 'Cannot be null'
    else
      name.setCustomValidity ''
    return
