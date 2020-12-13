# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

document.addEventListener 'turbolinks:load', ->

  name = $('#name')[0]
  email = $('#email')[0]
  tel = $('#telephone')[0]
  message = $('#message')[0]

  console.log(name.value)

# Check the start validity of the inputs
  # Name validity
  if !name.value
    name.setCustomValidity 'Cannot be null'

  # Email validity
  if !email.value.match(/^([A-z0-9._-]+)@([A-z0-9._-]+)$/g)
    email.setCustomValidity 'Invalid email address'

  # Telephone validity
  if !tel.value
    tel.setCustomValidity 'Cannot be null'

  # Message validity
  if !message.value
    message.setCustomValidity 'Cannot be null'

# Listen for a change in input and update validity accordingly
  # Name listener
  name.addEventListener "input", (event) ->
    if !name.value
      name.setCustomValidity 'Cannot be null'
    else
      name.setCustomValidity ''
    return

  # Email listener
  email.addEventListener "input", (event) ->
    if !email.value.match(/^([A-z0-9._-]+)@([A-z0-9._-]+)$/g)
      email.setCustomValidity 'Invalid email address'
    else
      email.setCustomValidity ''
    return

  # Telephone listener
  tel.addEventListener "input", (event) ->
    if !tel.value
      tel.setCustomValidity 'Cannot be null'
    else
      tel.setCustomValidity ''
    return

  # Message listener
  message.addEventListener "input", (event) ->
    if !message.value
      message.setCustomValidity 'Cannot be null'
    else
      message.setCustomValidity ''
    return
