# encoding: utf-8
module ApplicationHelper
  ALERT_CLASSES = { :notice=>:success, :alert=>:error }
  def notices
    output = ''
    flash.each do |name, msg|
      output += (content_tag :div, (raw '<a class="close" href="#">x</a>'+'<p>'+msg+'</p>'), :id => "flash_#{name}", :'data-alert'=>'', :class=>"alert-message block-message #{ALERT_CLASSES[name]||'info'} error fade in") if msg.is_a?(String)
    end
    raw output
  end

  def tokyo_ward_select(selected='世田谷区')
    wards = [
             '足立区',
             '荒川区',
             '文京区',
             '千代田区',
             '中央区',
             '江戸川区',
             '板橋区',
             '葛飾区',
             '北区',
             '江東区',
             '目黒区',
             '港区',
             '中野区',
             '練馬区',
             '大田区',
             '世田谷区',
             '渋谷区',
             '品川区',
             '杉並区',
             '墨田区',
             '豊島区',
             '台東区',
             '新宿区',
            ]
    select_tag 'location', options_for_select(wards, selected)
  end

  def community_select(selected='')
    communities = ['', 'VOYAGE GROUP', '東京大学']

    select_tag 'community', options_for_select(communities, selected)
  end

end
