# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


# Configuring Isotope
# After Images are loaded
# The Div's with id="listings" are getting isotoped
# With the Selector, only do this on Div's with class="listings-box"

jQuery ->
  $('#listings').imagesLoaded ->
    $('#listings').isotope itemSelector: ".listing-box"
