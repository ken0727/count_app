Rails.application.routes.draw do
  resources :posts
  
  get 'post/:id', to: 'test#search'

  Rails.application.routes.draw do
  resources :button_presses, only: [:index] do
    post :increment, on: :collection
    post 'decrement', on: :collection
  end
  root to: 'button_presses#index'
end

end
