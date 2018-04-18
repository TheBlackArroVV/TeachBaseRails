$(window.document).ready ->
  $('a.edit_route').click (event)->
    event.preventDefault()

    route_id = $(this).data 'routeId'
    form = $('#edit_route_' + route_id)
    title = $('#route_name_' + route_id)

    if (!$(this).hasClass('cancel'))
      $(this).html('Cancel')
      $(this).addClass('cancel')
    else
      $(this).html('Edit')
      $(this).removeClass('cancel')


    form.toggle()
    title.toggle()



