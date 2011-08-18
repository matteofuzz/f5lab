module NavigationHelpers
  module Refinery
    module PortfolioItems
      def path_to(page_name)
        case page_name
        when /the list of portfolio_items/
          admin_portfolio_items_path

         when /the new portfolio_item form/
          new_admin_portfolio_item_path
        else
          nil
        end
      end
    end
  end
end
