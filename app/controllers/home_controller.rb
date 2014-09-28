class HomeController < ApplicationController
  layout 'full'

  def index
    @cards = Card.first(4)
  end

  def about
  end
end
