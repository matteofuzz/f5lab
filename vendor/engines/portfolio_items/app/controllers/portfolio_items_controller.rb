class PortfolioItemsController < ApplicationController

  before_filter :find_all_portfolio_items
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @portfolio_item in the line below:
    present(@page)
  end

  def show
    @portfolio_item = PortfolioItem.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @portfolio_item in the line below:
    present(@page)
  end

protected

  def find_all_portfolio_items
    @portfolio_items = PortfolioItem.order('position ASC')
  end

  def find_page
    @page = Page.where(:link_url => "/portfolio_items").first
  end

end
