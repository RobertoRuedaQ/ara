class CarouselController < ApplicationController
  def index
  	@promos = Promo.all
  end
end
