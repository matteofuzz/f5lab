module ApplicationHelper       
  
  # build a tempfile image with the text rendered
  # :font_size => 12,
  # :font_family => '',
  # ... see http://markevans.github.com/dragonfly/file.ImageMagick.html
  def image_text(text, options = {})
    image = Dragonfly::App[:images].generate(:text, text, options)
    image.tempfile 
    image_tag image.url
  end    
  
  def current_theme
    theme = session[:theme]
    theme ||= RefinerySetting.get(:default_theme)
    return theme
  end  
  
  def theme_switcher            
    tags = ''        
    themes = RefinerySetting.get(:themes) - [ current_theme ]
    themes.each{|t| tags += content_tag('li', link_to(t+' theme', use_theme_url(t)))}
    content_tag('ul', tags.html_safe, :id => "theme_switcher")
  end
end
