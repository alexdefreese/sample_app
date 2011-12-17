SampleApp::Application.routes.draw do
  resources :users
  
  get "users/new"

  match '/contact', :to => 'pages#contact'
  match '/about', :to => 'pages#about'
  match '/help', :to => 'pages#help'
  
  root :to => 'pages#home'
  
  match '/signup', :to =>'users#new'
  
  get "pages/home"
  get "pages/contact"
  get "pages/about"
end
