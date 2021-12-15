Rails.application.routes.draw do
  get 'todolists/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #お試し'top’→’/’
  get '/' => 'homes#top'
  resources :books
end
