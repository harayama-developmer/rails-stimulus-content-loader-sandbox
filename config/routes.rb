Rails.application.routes.draw do
  resources :posts do
    resources :comments, only: %i(index create destroy)
  end
end
