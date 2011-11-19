class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(params[:item])
    @item.user_id = current_user
    if (@item.save)
      redirect_to item_path(@item), :notify => 'Successfully created item'
    else
      render :new
    end
  end

  def show
    @item = Item.find params[:id]
  end
end
