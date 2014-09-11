module ApplicationHelper
  def render_page_title
    title = @page_title ? "#{@page_title} | #{SITE_NAME}" : SITE_NAME rescue "SITE_NAME"
    content_tag("title", title, nil, false)
  end

  def markdown(content)
    sanitize MarkdownConvertor.convert(content)
  end
end
