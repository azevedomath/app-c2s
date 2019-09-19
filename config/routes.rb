Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'posts#index'

post '/received', to: 'posts#received'

get '/received', to: 'posts#received'

resources :incoming_mails

end
