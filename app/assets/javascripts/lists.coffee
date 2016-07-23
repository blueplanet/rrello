# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'ready page:load', ->
  new Vue(
    el: '#board'
    data:
      draggingItem: undefined,
      lists: JSON.parse($('#board').attr('data-lists'))
    methods:
      dragstart: (card, e) ->
        console.log "dragstart: #{card.content}"
        @.draggingItem = card
        e.target.style.opacity = 0.5

      dragend: (e) ->
        console.log 'dragend'
        e.target.style.opacity = 1.0
      dragenter: (card) ->
        console.log "dragenter: #{card.content}"
        draggingOrderNo = @.draggingItem.order_no
        @.draggingItem.order_no = card.order_no
        card.order_no = draggingOrderNo
  )
