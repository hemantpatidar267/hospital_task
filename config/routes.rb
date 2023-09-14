Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'doctors/new'
  get 'doctors/create'
  get 'doctors/show'
  get 'doctors/index'

  # root "pateints/sign_in"
  # root :to => "devise/sessions#new"
  # devise_for :admins, path: 'admins'
  # devise_scope :admin do
  # authenticated :admin do
  #   root 'home#index', as: :authenticated_root
  # end
  # end
  root :to => redirect("/pateints/sign_in")


  get 'appointments/create'
  get 'appointments/new'
  get 'appointments/edit'
  get 'appointments/update'
  get 'appointments/index'
  devise_for :pateints, controllers: {
          sessions: 'pateints/sessions',
          registrations: 'pateints/registrations'

        }

  resources :appointments

end
