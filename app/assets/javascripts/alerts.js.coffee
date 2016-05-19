jQuery ->

  $('.notice, .error').on 'click', ->
    $(this).remove()

  setTimeout (->
    $('.notice, .error').slideUp 300
  ), 10000