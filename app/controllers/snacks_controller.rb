class SnacksController < ApplicationController
  def index
    @snacks = Snack.order(:id)
  end
end
