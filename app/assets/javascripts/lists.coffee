# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'ready page:load', ->
  if $('#index')[0]
    new Vue(
      el: '#index'
      data:
        items: JSON.parse($('#index').attr('data-lists'))
    )
