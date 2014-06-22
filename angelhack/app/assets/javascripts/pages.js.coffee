# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on("ready page:load", ->
  $("#select-user-type").on("click", "a", (event) ->
    selection = $(@)
    $("#user-type-status").text(selection.text())
    $("#new-user-form").attr("action", selection.data("action"))
    $('')
  )
)
