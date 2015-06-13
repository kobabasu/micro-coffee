define [
], (
) ->
  class @Hello
    variable = 'hello'

    constructor: ->
      sayHello()

    sayHello = ->
      $('body').append(variable)
