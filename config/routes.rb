OccupySoftware::Application.routes.draw do
  
  resources :tags
  
  resources :chunks

  resources :documents

  resources :mockups do
    collection do
      get :tagging_text
    end
  end
end
