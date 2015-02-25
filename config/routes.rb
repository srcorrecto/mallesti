Rails.application.routes.draw do
  # Rutas para los recursos relacionados con Customer
  resources :customers, except: [:new, :edit]
  # Rutas para los recursos relacionados con Project
  resources :projects, except: [:new, :edit]
end
