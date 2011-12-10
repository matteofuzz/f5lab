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
    tags += '<div class="clear"></div>'.html_safe
    content_tag('ul', tags.html_safe, :id => "theme_switcher")
  end     
     
  def logo_link                             
    desc_tag = content_tag 'span', RefinerySetting.get(:site_description).html_safe, :class => 'site_description'
    link_to (RefinerySetting.find_or_set(:site_name, "Company Name")+desc_tag).html_safe, root_path
  end        
  
  def favicon_tag
    '<link rel="icon" href="/favicon.ico" />'.html_safe
  end
  
  
  # NB. Overriden for bug !
  # see https://github.com/resolve/refinerycms/pull/1161
  #
  # Determine whether the supplied page is the currently open page according to Refinery.
  # Also checks whether Rails thinks it is selected after that using current_page?
  def selected_page?(page)
    path = request.path
    path = path.force_encoding('utf-8') if path.respond_to?(:force_encoding)

    # Ensure we match the path without the locale, if present.
    if ::Refinery.i18n_enabled? and path =~ %r{^/#{::I18n.locale}/}
      path = path.split(%r{^/#{::I18n.locale}}).last
      path = "/" if path.blank?
    end

    # First try to match against a "menu match" value, if available.
    return true if page.try(:menu_match).present? && path =~ Regexp.new(page.menu_match)

    # Find the first url that is a string.
    url = [page.url]
    url << ['', page.url[:path]].compact.flatten.join('/') if page.url.respond_to?(:keys)
    url = url.detect{|u| u.is_a?(String)}
    url.chomp!('/') if url.size > 1

    # Now use all possible vectors to try to find a valid match,
    # finally passing to rails' "current_page?" method.
    [path, URI.decode(path)].include?(url) || path == "/#{page.id}" || current_page?(page)
  end
 
end
