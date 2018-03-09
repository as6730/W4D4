Rails.application.routes.draw do
  get 'tracks/create'

  get 'tracks/new'

  get 'tracks/edit'

  get 'tracks/show'

  get 'tracks/update'

  get 'tracks/destroy'

  get 'albums/create'

  get 'albums/new'

  get 'albums/edit'

  get 'albums/show'

  get 'albums/update'

  get 'albums/destroy'

  get 'bands/index'

  get 'bands/create'

  get 'bands/new'

  get 'bands/edit'

  get 'bands/show'

  get 'bands/update'

  get 'bands/destroy'

  resources :users, only: [:new, :create, :show]
  resource :session, only: [:new, :create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
