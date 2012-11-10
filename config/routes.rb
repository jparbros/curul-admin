CurulAdmin::Application.routes.draw do
  devise_for :users, :controllers => { :sessions => "sessions" }

  match "initiatives/bulk_update", :to => "bulk_update_initiatives#edit"
  resources :initiatives do
    resource :main, :controller => :main, :only => [:create]
  end

  match "representatives/bulk_update", :to => "bulk_update_representatives#edit"
  resources :representatives do
    resources :comments, only: [] do
      resource :approve, only: :create, controller: 'representatives/comments/approve'
      resource :unapprove, only: :create, controller: 'representatives/comments/unapprove'
    end
  end

  resources :topics
  resources :political_parties
  resources :commissions
  resources :users
  resources :sites
  resources :comments
  
  resources :legislatures do
    resource :actual, controller: 'legislatures/actual', only: :create
  end

  root :to => "dashboard#show"
end
