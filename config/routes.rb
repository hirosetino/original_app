Rails.application.routes.draw do
  devise_for :users
  root 'recipes#index'
  resouces :recipes, only: [:index, :new]
end
