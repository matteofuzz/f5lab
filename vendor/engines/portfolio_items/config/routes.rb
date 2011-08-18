::Refinery::Application.routes.draw do
  resources :portfolio_items, :only => [:index, :show]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :portfolio_items, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
