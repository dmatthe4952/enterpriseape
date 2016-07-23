Rails.application.routes.draw do
  resources :employees
  resources :companies do
    collection { post :import}
  end
  devise_for :users
  get 'welcome/index'
  get 'welcome/about'
  get 'welcome/contact'
  get 'welcome/features'
  get 'welcome/faq'
  get 'welcome/pricing'

  resources :invoices do
    resources :purchases, except:[:index], controller: 'invoices/purchases'
    resources :invoices
      collection { post :import}
    end
  root to: 'invoices#index'
  end
