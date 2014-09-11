#
# Markdown convertor with redcarpet
#
# Usage:
#     MarkdownConvertor.convert('markdown content')
#
class MarkdownConvertor
  include Singleton

  class << self
    def convert(text)
      instance.convert(text)
    end
  end

  def convert(text)
    @converter.render(text)
  end

  private
  def initialize
    render = Redcarpet::Render::HTML.new({
      :no_styles => true
    })

    @converter = Redcarpet::Markdown.new(render, {
      autolink: true,
      fenced_code_blocks: true,
      no_intra_emphasis: true
    })
  end
end


