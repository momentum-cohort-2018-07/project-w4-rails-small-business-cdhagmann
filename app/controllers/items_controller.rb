require 'csv'

class ItemsController < ApplicationController
  def index
    # @items = []
    # CSV.foreach('/Users/cdhagmann/Documents/Momentum/project-w4-rails-small-business-cdhagmann/db/faust_inventory.csv', headers: true) do |row|
    #   @items << Item.new(row.to_h)
    # end
    @items = Item.all.where("quantity > 0")
  end

  def show
    @item = Item.find(params[:id])
  end

end
