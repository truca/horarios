class CheckoutController < ApplicationController
  def index
	@trabajos = Trabajo.order(:fecha).order(:usuario)
  end
end
