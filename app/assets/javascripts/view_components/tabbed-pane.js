$(function() {
  $('.nav-tabs a').on('click', function(event) {
    event.preventDefault();
    var tabbed_pane = $(event.target).closest('.tabbed-pane');
    var tab_slider = tabbed_pane.children('.tab-nav-body').children('.tab-content').children('.tab-content-slider');
    var active_tab = tab_slider.children('.' + $(event.target).data('tab'));
    var heading = tabbed_pane.children('.tab-nav-heading');

    heading.find('.nav-tabs li').removeClass('active');
    $(event.target).parent().addClass('active');
    tab_slider.css('left', -active_tab.position().left);
  });
});
