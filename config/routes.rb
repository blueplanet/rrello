Rails.application.routes.draw do
  root 'lists#index'

  resources :lists, only: %i(index update) do
    get :lists, on: :collection
  end
end
