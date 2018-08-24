class ItemsController < ApplicationController
  def index
    @items = Item.all.where("quantity > 0")
  end

  def show
    @item = Item.find(params[:id])
  end

end
