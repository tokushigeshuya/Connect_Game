Rails.application.routes.draw do

  root 'user/homes#top'

  namespace :user do

    get 'homes/about'
    get 'homes/index'
    
    resources :posts do
    end
  end


  devise_for :users,skip: [:passwords],  controllers: {
    registrations: "user/registrations",
    sessions: 'user/sessions'
  }
  devise_for :admin,skip: [:registrations, :passwords] , controllers: {
    sessions: "admin/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
