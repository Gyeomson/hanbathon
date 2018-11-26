Rails.application.routes.draw do
  
  root to:'homes#index'
  
  #메인 페이지
  get 'homes/index', to: 'homes#index'
  
  #참가자 정보
  get 'recruits', to: 'recruits#index'
  get 'recruits/:id/:name', to: 'recruits#show', as: 'user_show'
  get 'recruits/sign_up', to: 'recruits#sign_up'
  post 'recruits/sign_up', to: 'recruits#create'
  get 'recruits/edit/:id/:name', to: 'recruits#edit', as: 'user_edit'
  patch 'recruits/edit/:id/:name', to: 'recruits#update', as: 'user_update'
  delete 'recruits/destroy/:id/:name', to: 'recruits#destroy', as: 'user_destroy'
  get 'recruits/sign_in', to: 'recruits#sign_in'
  post 'recruits/go', to: 'recruits#go'

end
