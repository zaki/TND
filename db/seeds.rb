# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
takada = User.find_or_initialize_by_name_and_location(:name=>'高田 美重子', :location=>'世田谷区')
morita = User.find_or_initialize_by_name_and_location(:name=>'森田 一郎',   :location=>'世田谷区')

takada.save!
morita.save!

item = Item.find_or_initialize_by_name_and_description_and_expires_at(:name=>'God\'s Light In Me (絵本)', :description=>'-', :expires_at=>3.days.since)
item.photo = File.open(Rails.root.join("public/images/item_image_book.png"))
item.user = takada
item.save!

item = Item.find_or_initialize_by_name_and_description_and_expires_at(:name=>'ちゃりんこ！', :description=>'-', :expires_at=>3.days.since)
item.photo = File.open(Rails.root.join("public/images/item_image_bike.png"))
item.user = takada
item.save!

item = Item.find_or_initialize_by_name_and_description_and_expires_at(:name=>'花のパターンの服（可愛い＾＾）', :description=>'-', :expires_at=>3.days.since)
item.photo = File.open(Rails.root.join("public/images/item_image_childcloth.png"))
item.user = takada
item.save!

item = Item.find_or_initialize_by_name_and_description_and_expires_at(:name=>'コーヒーメーカ', :description=>'-', :expires_at=>3.days.since)
item.photo = File.open(Rails.root.join("public/images/item_image_coffeemaker.png"))
item.user = takada
item.save!

item = Item.find_or_initialize_by_name_and_description_and_expires_at(:name=>'青いソファー', :description=>'-', :expires_at=>3.days.since)
item.photo = File.open(Rails.root.join("public/images/item_image_sofa.png"))
item.user = takada
item.save!

item = Item.find_or_initialize_by_name_and_description_and_expires_at(:name=>'ノーブランドのリュックサック', :description=>'-', :expires_at=>3.days.since)
item.photo = File.open(Rails.root.join("public/images/item_image_backpack.png"))
item.user = takada
item.save!

item = Item.find_or_initialize_by_name_and_description_and_expires_at(:name=>'テディベア', :description=>'-', :expires_at=>3.days.since)
item.photo = File.open(Rails.root.join("public/images/item_image_bear.png"))
item.user = takada
item.save!

item = Item.find_or_initialize_by_name_and_description_and_expires_at(:name=>'女子服', :description=>'-', :expires_at=>3.days.since)
item.photo = File.open(Rails.root.join("public/images/item_image_onepiece.png"))
item.user = takada
item.save!

item = Item.find_or_initialize_by_name_and_description_and_expires_at(:name=>'ギター', :description=>'-', :expires_at=>3.days.since)
item.photo = File.open(Rails.root.join("public/images/item_image_guitar.png"))
item.user = takada
item.save!

item = Item.find_or_initialize_by_name_and_description_and_expires_at(:name=>'ポロシャツ', :description=>'-', :expires_at=>3.days.since)
item.photo = File.open(Rails.root.join("public/images/item_image_polo.png"))
item.user = takada
item.save!
