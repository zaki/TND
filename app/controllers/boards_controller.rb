# encoding: utf-8
class BoardsController < ApplicationController
  before_filter :set_user
  def friends
    # TODO: horrible hacks are on the rise with fewer and fewer hours remaining
    @items = User.find_by_name(['高田 美重子', '森田 一郎']).items
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
