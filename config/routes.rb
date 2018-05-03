# == Route Map
#
#                   Prefix Verb   URI Pattern                    Controller#Action
#               home_index GET    /home/index(.:format)          home#index
#                home_show GET    /home/show(.:format)           home#show
#         new_user_session GET    /users/sign_in(.:format)       users/sessions#new
#             user_session POST   /users/sign_in(.:format)       users/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      users/sessions#destroy
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#            user_password PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
#                          POST   /users/password(.:format)      devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)        users/registrations#cancel
#    new_user_registration GET    /users/sign_up(.:format)       users/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          users/registrations#edit
#        user_registration PATCH  /users(.:format)               users/registrations#update
#                          PUT    /users(.:format)               users/registrations#update
#                          DELETE /users(.:format)               users/registrations#destroy
#                          POST   /users(.:format)               users/registrations#create
#                  sign_in GET    /sign_in(.:format)             users/sessions#new
#                 sign_out GET    /sign_out(.:format)            users/sessions#destroy
#                     root GET    /                              home#index
#          show_list_index GET    /show_list/index(.:format)     show_list#index
#            show_list_new GET    /show_list/new(.:format)       show_list#new
#         show_list_create POST   /show_list/create(.:format)    show_list#create
# 

Rails.application.routes.draw do
  get 'home/index'

  get 'home/show'

  devise_for :users, :controllers => {
      :registrations => 'users/registrations',
      :sessions => 'users/sessions'
  }

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy"
  end

  root 'show_list#index'
  get 'show_list/index'
  get 'show_list/new'
  post 'show_list/create'

  resources :likes, only: [:create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
