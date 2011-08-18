if defined?(User)
  User.all.each do |user|
    if user.plugins.where(:name => 'portfolio_items').blank?
      user.plugins.create(:name => 'portfolio_items',
                          :position => (user.plugins.maximum(:position) || -1) +1)
    end
  end
end

if defined?(Page)
  page = Page.create(
    :title => 'Portfolio Items',
    :link_url => '/portfolio_items',
    :deletable => false,
    :position => ((Page.maximum(:position, :conditions => {:parent_id => nil}) || -1)+1),
    :menu_match => '^/portfolio_items(\/|\/.+?|)$'
  )
  Page.default_parts.each do |default_page_part|
    page.parts.create(:title => default_page_part, :body => nil)
  end
end