Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: :auth }
  root 'home#index'
  get "/api/activity" => "activity#feed"
end
