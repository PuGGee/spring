$(function() {
  $('.ajax-content').each(function(index, element) {
    $.ajax($(element).data('url'), {
      method: 'get',
      success: function(response) {
        $(element).html(response);
      },
      error: function(response) {
        $(element).html('Something went wrong!');
      }
    });
  });
});
