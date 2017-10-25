Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'client#index', as: 'home'
  get 'event/:id' => 'client#show', as: 'event'

end
