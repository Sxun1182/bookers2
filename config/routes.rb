Rails.application.routes.draw do
  get 'home/about' => "homes#about"
  
  devise_for :users
  root to: "homes#top"
  
  resources :books,only:[:new,:create,:index,:show,:destroy,:edit,:update]
  resources :users,only:[:new,:create,:index,:show,:edit,:update]

end
