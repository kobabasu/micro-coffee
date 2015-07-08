// Generated by CoffeeScript 1.9.3
(function() {
  this.Rest = (function() {
    var getIndex, host;

    host = 'http://localhost:8080/api/';

    function Rest() {
      getIndex();
    }

    getIndex = function() {
      return $.ajax({
        url: host + 'users',
        type: 'GET',
        error: function() {
          return console.log('error');
        },
        success: function(json) {
          return $.each(json.data, function(i, item) {
            return $('body').prepend(item.name + '<br>');
          });
        }
      });
    };

    return Rest;

  })();

}).call(this);
