def end_points
  post 'login', to: 'authentication#login'
  post 'signup', to: 'authentication#signup'
  get 'show_profile', to: 'authentication#show_profile'
  post 'cities/generate_all_cities', to: 'cities#generate_all_cities'
  post 'blood_types/generate_all_blood_types', to: 'blood_types#generate_all_blood_types'
  get 'blood_donation_requests/my_requests', to: 'blood_donation_requests#my_requests'
  put 'blood_donation_requests/resolve_request/:id', to: 'blood_donation_requests#resolve_request'
  put 'blood_donation_requests/cancel_request/:id', to: 'blood_donation_requests#cancel_request'
  post 'blood_donation_requests/send_email_to_owner/:id', to: 'blood_donation_requests#send_email_to_owner'

  resources :cities, :only => [:index]
  resources :blood_types, :only => [:index]
  resources :blood_donation_requests, :only => [:index, :create]
end

Rails.application.routes.draw do
  api_version(:module => "api/v1", :header => {:name => "API-VERSION", :value => "v1"}) do
    end_points
  end
end
