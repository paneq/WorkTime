#encoding: UTF-8

module ApplicationHelper
  def nice_date_format(date)
    date.strftime("%d-%m-%Y").to_s
  end
  
  def month_name(month_index)
    month_names = ['Styczeń', 'Luty', 'Marzec', 'Kwiecień', 'Maj', 'Czerwiec', 'Lipiec', 'Sierpień', 'Wrzesień', 'Październik', 'Listopad', 'Grudzień']
    month_names[month_index-1]
  end
  
  def slick_button(button_text, button_link)
    raw("<div class=\"slick_button\">" + link_to(raw("<span>#{button_text}</span>"), button_link, :class => 'button') + raw("<div class=\"clear\"></div></div>"))
  end
  
  def slick_button_submit(button_text, action)
    raw("<div class=\"slick_button\">" + link_to(raw("<span>#{button_text}</span>"), "#", :onclick => action, :class => 'button') + raw("<div class=\"clear\"></div></div>"))
  end
  
  def slick_button_raw(button_text, button_link)
    link_to(raw("<span>#{button_text}</span>"), button_link, :class => 'button')
  end
end
