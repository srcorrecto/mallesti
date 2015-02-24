Rails.application.routes.draw do
  # Rutas para los recursos relacionados con Customer
  resources :customers, except: [:new, :edit]
end
