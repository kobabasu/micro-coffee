require [
  'vendor/jquery/dist/jquery.min.js'
  'js/hello.js'
  # 'js/rest.js'
], (
  Jquery
  Hello
  # Rest
) ->
  $(document).ready ->
    new Hello()
    # new Rest()
