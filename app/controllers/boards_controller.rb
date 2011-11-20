# encoding: utf-8
class BoardsController < ApplicationController
  before_filter :set_user
  def friends
    # TODO: horrible hacks are on the rise with fewer and fewer hours remaining
    @items = User.find_by_name(['高田 美重子', '森田 一郎']).items
    @current_board = '友達ボード'
  end

  def me
#    @items = @user.items
    @items = [
      Item.new(:price=>1800, :name=>'God\'s Light In Me (絵本)', :description=>'test', :user=>current_user),
      Item.new(:price=>1800, :name=>'ちゃりんこ！', :description=>'test', :user=>current_user),
      Item.new(:price=>1800, :name=>'ノーブランドのリュックサック', :description=>'test', :user=>current_user),
      Item.new(:price=>1800, :name=>'花のパターンの服（可愛い＾＾', :description=>'test', :user=>current_user),
      Item.new(:price=>1800, :name=>'コーヒーメーカー', :description=>'test', :user=>current_user),
      Item.new(:price=>1800, :name=>'青いソファー', :description=>'test', :user=>current_user),
      Item.new(:price=>0, :name=>'テディベア', :description=>'test', :user=>current_user),
      Item.new(:price=>1800, :name=>'女子服', :description=>'test', :user=>current_user),
      Item.new(:price=>1800, :name=>'ギター', :description=>'test', :user=>current_user),
      Item.new(:price=>1800, :name=>'God\'s Light In Me (絵本)', :description=>'test', :user=>current_user),
      Item.new(:price=>1800, :name=>'ちゃりんこ！', :description=>'test', :user=>current_user),
      Item.new(:price=>1800, :name=>'花のパターンの服（可愛い＾＾', :description=>'test', :user=>current_user),
      Item.new(:price=>1800, :name=>'コーヒーメーカ', :description=>'test', :user=>current_user),
      Item.new(:price=>0, :name=>'青いソファー', :description=>'test', :user=>current_user),
      Item.new(:price=>1800, :name=>'ノーブランドのリュックサック', :description=>'test', :user=>current_user),
      Item.new(:price=>1800, :name=>'テディベア', :description=>'test', :user=>current_user),
      Item.new(:price=>1800, :name=>'女子服', :description=>'test', :user=>current_user),
      Item.new(:price=>0, :name=>'ギター', :description=>'test', :user=>current_user),
      Item.new(:price=>1800, :name=>'ノーブランドのリュックサック', :description=>'test', :user=>current_user),
      Item.new(:price=>1800, :name=>'ちゃりんこ！', :description=>'test', :user=>current_user),
    ]
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
