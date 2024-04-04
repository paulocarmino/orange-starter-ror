Rails.application.routes.draw do
  get "up" => "rails/health#show", :as => :rails_health_check

  devise_for :users
  root "pages#home"
  get "protected" => "pages#protected"
end
