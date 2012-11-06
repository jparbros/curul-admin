CurulAdmin::Application.routes.draw do
  devise_for :users, :controllers => { :sessions => "sessions" }
  
  resources :initiatives do
    resource :main, :controller => :main, :only => [:create]
  end
  resources :topics
  resources :political_parties
  match "representatives/bulk_update", :to => "bulk_update_representatives#edit"
  resources :representatives do
    resources :comments, only: [] do
      resource :approve, only: :create, controller: 'representatives/comments/approve'
      resource :unapprove, only: :create, controller: 'representatives/comments/unapprove'
    end
  end
  resources :commissions
  resources :users
  resources :comments
  resources :legislatures do
    resource :actual, controller: 'legislatures/actual', only: :create
  end

  root :to => "dashboard#show"
end
