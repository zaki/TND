# encoding: utf-8
module ItemsHelper
  def pricify(price)
    if price==0
      content_tag :div, "FREE", :class=>'item-price-free'
    else
      content_tag :div, '￥'+price
    end
  end
end
