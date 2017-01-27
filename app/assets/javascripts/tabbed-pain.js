$(function() {
  $('.nav-tabs a').on('click', function(event) {
    event.preventDefault();
    var tabbed_panel = $(event.target).closest('.tabbed-panel');
    var active_tab = $('.' + $(event.target).data('tab'));

    tabbed_panel.find('.tab-pane, .nav-tabs li').removeClass('active');
    active_tab.addClass('active');
    $(event.target).parent().addClass('active');
    tabbed_panel.find('.tab-content-slider').css('left', -active_tab.position().left);
  });
});
