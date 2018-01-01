# == Route Map
#
#           Prefix Verb URI Pattern                 Controller#Action
#             root GET  /                           show_list#index
#  show_list_index GET  /show_list/index(.:format)  show_list#index
#    show_list_new GET  /show_list/new(.:format)    show_list#new
# show_list_create POST /show_list/create(.:format) show_list#create
# 

Rails.application.routes.draw do
  root 'show_list#index'
  get 'show_list/index'
  get 'show_list/new'
  post 'show_list/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
