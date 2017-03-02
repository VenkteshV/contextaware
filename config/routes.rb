Rails.application.routes.draw do
  resources :accelerometer_readings
  resources :gyroscope_readings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
