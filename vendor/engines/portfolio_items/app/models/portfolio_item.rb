class PortfolioItem < ActiveRecord::Base

  acts_as_indexed :fields => [:title, :description, :link]

  validates :title, :presence => true, :uniqueness => true
  
  belongs_to :screenshot, :class_name => 'Image'  
  
  def url
    if self.link =~ /^https?:\/\// 
      self.link
    else
      'http://' + self.link
    end
  end
end
