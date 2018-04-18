$(document).ready ->
  $("#carriage_type").change ->
    type = $("#carriage_type").val()
    top_places = $('.top_places')
    bottom_places = $('.bottom_places')
    side_top_places = $('.side_top_places')
    side_bottom_places = $('.side_bottom_places')
    seating_places = $('.seating_places')

    switch type
      when "CoupeCarriage"
        top_places.show()
        bottom_places.show()
        side_bottom_places.hide()
        side_top_places.hide()
        seating_places.hide()
      when "EconomyCarriage"
        top_places.show()
        bottom_places.show()
        side_bottom_places.show()
        side_top_places.show()
        seating_places.hide()
      when  "SeatingCarriage"
        top_places.hide()
        bottom_places.hide()
        side_bottom_places.hide()
        side_top_places.hide()
        seating_places.show()
      else
        top_places.hide()
        bottom_places.show()
        side_bottom_places.hide()
        side_top_places.hide()
        seating_places.hide()
