Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/project'

  get 'welcome/contact'

  resources :innovations


  root to: 'welcome#index'
  
end
