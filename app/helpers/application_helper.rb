module ApplicationHelper
  ALERT_CLASSES = { :notice=>:success, :alert=>:error }
  def notices
    output = ''
    flash.each do |name, msg|
      output += (content_tag :div, (raw '<a class="close" href="#">x</a>'+'<p>'+msg+'</p>'), :id => "flash_#{name}", :'data-alert'=>'', :class=>"alert-message block-message #{ALERT_CLASSES[name]||'info'} error fade in") if msg.is_a?(String)
    end
    raw output
  end
end
