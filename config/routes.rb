Rails.application.routes.draw do
  resources :restaurants do
    collection do
      get :top
    end

    # get 'restaurants/:id/chef', to: 'restaurants#chef'
    member do
      get :chef
    end

    # get 'restaurants/:restaurant_id/reviews', to: 'reviews#index'
    # get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new'
    # post 'restaurants/:restaurant_id/reviews', to: 'reviews#create'
    resources :reviews, only: [ :new, :create]
  end

  # get 'reviews/:id/edit', to: 'reviews#edit'
  # patch 'reviews/:id', to: 'reviews#update'
  # delete 'reviews/:id'
  resources :reviews, only: [:edit, :update, :destroy]
end
