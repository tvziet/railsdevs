require 'sidekiq/web'

Rails.application.routes.draw do
  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  # Simple forum discussion
  mount SimpleDiscussion::Engine => "/forum"

  devise_for :users
  root to: 'home#index'
end
