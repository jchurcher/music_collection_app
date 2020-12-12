# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

document.addEventListener 'turbolinks:load', ->

  # btn = $('input[name=commit]')[0]
  #
  # btn.addEventListener "click", (event) ->
  #   console.log("Child")
    # console.log(track)

  # element = document.querySelector("#form")
  # element.addEventListener "ajax:error", ->
  #   console.log("Earth")

  # window.onload = ->
  name = $('input[name="track[name]"]')[0]
  length = $('input[name="track[length]"]')[0]

  if !name.value
    name.setCustomValidity 'Cannot be null'

  if !length.value.match(/^([0-9]+):[0-5]([0-9]{1}$)/g)
    length.setCustomValidity 'Invalid format (mm:ss)'

  name.addEventListener "input", (event) ->
    if !name.value
      name.setCustomValidity 'Cannot be null'
    else
      name.setCustomValidity ''
    return

  length.addEventListener "input", (event) ->
    if !length.value.match(/^([0-9]+):[0-5]([0-9]{1}$)/g)
      length.setCustomValidity 'Invalid format (mm:ss)'
    else
      length.setCustomValidity ''
    return
