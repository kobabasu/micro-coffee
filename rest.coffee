class @Rest

  host = 'http://localhost:8080/api/'

  constructor: ->
    getIndex()

  getIndex = ->
    $.ajax
      url: host + 'users'
      type: 'GET'
      error: ->
        console.log 'error'
      success: (json) ->
        $.each(json.data, (i, item) ->
          $('body').prepend(item.name + '<br>')
        )
