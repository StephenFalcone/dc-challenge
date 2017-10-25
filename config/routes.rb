Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  #route for home
  root 'client#index', as: 'home'
  #route for each indivicual event
  get 'event/:id' => 'client#show', as: 'event'
  #route for REST api endpoint
  get 'event/:id/json' => 'client#json', as: 'json'


end
