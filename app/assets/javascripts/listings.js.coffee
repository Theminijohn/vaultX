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


  if $('.pagination').length
    $(window).scroll ->
      url = $('.pagination .next_page a').attr('href')
      if url && $(window).scrollTop() > $(document).height() - $(window).height() - 50
        # What to do at the bottom of the page
        $('.pagination').text("Fetching more Listings...")
        $.getScript(url)
      $(window).scroll()


