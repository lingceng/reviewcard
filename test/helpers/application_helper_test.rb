require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase

  test "markdown should return markdown" do
    assert_equal '<p><strong>helloworld</strong></p>', markdown('**helloworld**').strip
  end

end
