Rails.application.routes.draw do
  root 'show_list#index'
  get 'show_list/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
