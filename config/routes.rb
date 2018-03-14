Rails.application.routes.draw do
  resources :noticia do
    resources :comments, only: [:create, :index, :destroy]
  end
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

end
