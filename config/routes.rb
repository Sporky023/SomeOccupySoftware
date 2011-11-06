OccupySoftware::Application.routes.draw do
  resources :mockups do
    collection do
      get :tagging_text
    end
  end
end
