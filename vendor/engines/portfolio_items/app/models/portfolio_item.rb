class PortfolioItem < ActiveRecord::Base

  acts_as_indexed :fields => [:title, :description, :link]

  validates :title, :presence => true, :uniqueness => true
  
  belongs_to :screenshot, :class_name => 'Image'
end
