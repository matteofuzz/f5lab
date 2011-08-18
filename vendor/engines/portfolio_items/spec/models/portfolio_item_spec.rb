require 'spec_helper'

describe PortfolioItem do

  def reset_portfolio_item(options = {})
    @valid_attributes = {
      :id => 1,
      :title => "RSpec is great for testing too"
    }

    @portfolio_item.destroy! if @portfolio_item
    @portfolio_item = PortfolioItem.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_portfolio_item
  end

  context "validations" do
    
    it "rejects empty title" do
      PortfolioItem.new(@valid_attributes.merge(:title => "")).should_not be_valid
    end

    it "rejects non unique title" do
      # as one gets created before each spec by reset_portfolio_item
      PortfolioItem.new(@valid_attributes).should_not be_valid
    end
    
  end

end