Rails.application.routes.draw do


  resources :articles do
    resources :comments

    match 'search(/:search)', :to => 'articles#search', :as => :search, via: [:get, :post]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
