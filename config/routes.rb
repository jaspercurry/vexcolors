Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :flags #localhost:3000/api/v1/flags
      resources :colors #localhost:3000/api/v1/colors
    end
  end
end
