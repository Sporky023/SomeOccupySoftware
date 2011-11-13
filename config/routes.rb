OccupySoftware::Application.routes.draw do
  
  devise_for :users

  root :to => "documents#index"
  
  resources :tags
  
  resources :chunks

  resources :documents

  resources :mockups do
    collection do
      get :tagging_text
    end
  end
end
