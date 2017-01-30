module CommonHelper

  def ajax_content(url)
    content_tag(:div, class: 'ajax-content', data: {url: url}) do
      content_tag(:span, '', class: 'glyphicon glyphicon-refresh', 'aria-hidden' => 'true')
    end
  end
end
