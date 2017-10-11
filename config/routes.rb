Rails.application.routes.draw do
  namespace :api, :default => { :format => :json } do
    namespace :v1 do
      get "/trains" => "trains#index", :as => :trains
      get "/trains/:train_number" => "trains#show", :as => :train
      post "/reservations" => "reservations#create", :as => :create_reservations
      get "/reservations/:booking_code" => "reservations#show", :as => :reservation
      patch "reservations/:booking_code" => "reservations#update", :as => :update_reservation
      delete "reservations/:booking_code" => "reservations#destroy", :as => :cancel_reservation
    end
  end

  resources :cities do
    member do
      post :update_temp
    end
  end
end
