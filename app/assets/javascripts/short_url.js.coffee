# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$(document).ready ->
  $("#shareme").sharrre
    share:
      googlePlus: true
      facebook: true
      twitter: true
      linkedin: true
      pinterest: true

    options:
      enableCounter: false

    buttons:
      googlePlus:
        size: "tall"

      facebook:
        layout: "standard"

      twitter:
        count: "vertical"

      linkedin:
        counter: "top"

      pinterest:
        media: "http://sharrre.com/img/example1.png"
        description: $("#shareme").data("text")
        layout: "vertical"

    enableHover: false
    enableCounter: false
    enableTracking: true

