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
end
