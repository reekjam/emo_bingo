jQuery ->

  $('.notice, .error').on 'click', ->
    $(this).fadeOut()

  setTimeout (->
    $('.notice, .error').fadeOut 300
  ), 10000