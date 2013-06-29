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

    options:
      enableCounter: false

    buttons:
      googlePlus:
        url: '/assets/images/social/googleplus/googleplus-128.png'

      facebook:
         url: '/assets/images/social/facebook/facebook-128.png'

      twitter:
         url: '/assets/images/social/twitter/twitter-128.png'

      linkedin:
         url: '/assets/images/social/linkedin/linkedin-128.png'

	  pintrest:
	   	 url: '/assets/images/social/pintrest/pintrest-128.png'
	   	 
    enableHover: false
    enableCounter: false
    enableTracking: true

