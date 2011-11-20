# encoding: utf-8
module ItemsHelper
  def pricify(price)
    if price==0
      content_tag :div, "FREE", :class=>'item-price-free'
    else
      content_tag :div, '￥'+price.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\1,').reverse, :class=>'item-price'
    end
  end
end
