Rails.application.routes.draw do
  get 'warehouse/new'
  get 'dashboard/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'warehouse/new' => "warehouse#new"

  post 'warehouse/create' => "warehouse#create"

  get 'dashboard/index' => "dashboard#index"

  get 'threshold/:id/edit' => "threshold#edit"

  post 'threshold/update' => "threshold#update"

  root 'dashboard#index'

end
