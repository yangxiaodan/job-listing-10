Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :jobs
  end

  resources :jobs do
    resources :resumes
  end

  get 'contact' => 'jobs#contact'
   get 'about' => 'jobs#about'
   root 'welcome#index'
end
