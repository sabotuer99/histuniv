# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
    $(".boxes .media").on "click", ->
        alert("fired")
        document.location = $(this).data("target")
        return false
        
    $("[data-toggle]").on "click", ->
        modal_id = $(this).data("target")
        callback = -> 
            $(modal_id + " textarea").focus();
        setTimeout callback, 500
        
$(document).ready(ready)
$(document).on "page:load", ready