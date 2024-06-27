Rails.application.routes.draw do
  # devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  # config/routes.rb
  root to: 'tasks#index'
  # resources :tasks
  resources :tasks do
    patch 'status_update', on: :member
  end

  # patch 'tasks/:id/update_status', to: 'tasks#update_status', as: 'update_task_status'
    # patch 'status_update', on: :member, as: 'update_task_status'

  # root "articles#index"
  # namespace :admin do
  # resources :dashboard, only: [:index]
  # end


  # config/routes.rb


  namespace :admin do
    get 'dashboard', to: 'dashboard#index'
    get 'dashboard/user_tasks/:id', to: 'dashboard#user_tasks', as: 'user_tasks'
    get 'dashboard/edit_task/:id', to: 'dashboard#edit_task', as: 'edit_task'
    patch 'dashboard/update_task/:id', to: 'dashboard#update_task', as: 'update_task'
    # delete 'dashboard/destroy_task/:id', to: 'dashboard#destroy_task', as: 'destroy_task'
    get 'dashboard/destroy_task/:id', to: 'dashboard#destroy_task', as: 'destroy_task'
  end

end
