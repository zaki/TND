class BoardsController < ApplicationController
  before_filter :set_user
  def friends
  end

  def me
    #@items = @user.items
    @items = [Item.new(:name=>'Test Item', :description=>'test', :user=>current_user)]*10
  end

  def nearby
  end

private
  def set_user
    @user = current_user
  end
end
