# encoding: utf-8
class BoardsController < ApplicationController
  before_filter :set_user
  def friends
    # TODO: horrible hacks are on the rise with fewer and fewer hours remaining
    @items = User.find_by_name(['高田 美重子', '森田 一郎']).items
    @current_board = '友達ボード'
  end

  def me
    @items = @user.items
  end

  def nearby
    @current_board = '近所ボード'
    @items = User.find_by_name(['高田 美重子', '森田 一郎']).items
  end

private
  def set_user
    @user = current_user
  end
end
