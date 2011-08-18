module Admin
  class PortfolioItemsController < Admin::BaseController

    crudify :portfolio_item, :xhr_paging => true

  end
end
