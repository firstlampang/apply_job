Rails.application.routes.draw do
  resources :answers

  
  get 'question/index'
  get 'question/show'
  get 'question/create'
  root 'fitting#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/fitting', to: 'fitting#index', as: 'fitting'
  post '/applyjob', to: 'fitting#create', as: 'applyjob'


  

  
  # get '/test_put_json', to: 'fitting#test_put_json', as: 'test_put_json'

end
