Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :jobs
  end

  resources :jobs do
    resources :resumes
  end

  resources :jobs do
    collection do
      match 'search' => 'jobs#search', via: [:get, :post], as: :search
    end
  end

  get 'contact' => 'jobs#contact'
   get 'about' => 'jobs#about'
    get 'fish' => 'jobs#fish'
   root 'welcome#index'
end
