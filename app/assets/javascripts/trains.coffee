# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(window.document).ready ->
  $('a.edit_train').click (event)->
    event.preventDefault()

    train_id = $(this).data 'trainId'
    form = $('#edit_train_' + train_id)
    title = $('#train_number_' + train_id)

    if (!$(this).hasClass('cancel'))
      $(this).html('Cancel')
      $(this).addClass('cancel')
    else
      $(this).html('Edit')
      $(this).removeClass('cancel')


    form.toggle()
    title.toggle()