Rails.application.routes.draw do
  resources :notices
  resources :usercourses
  resources :teachers
  resources :courses
  devise_for :users, :path_names => {
           :sign_in => 'login', :sign_out => 'logout',
           :password => 'secret', :confirmation => 'verification',
           registration: 'register', edit: 'edit/profile'
         }
  resources :places
  resources :apikeys
  get "/register_course" => "courses#index"
  get "/user_register_course" => "usercourses#user_register_course"
  root "courses#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
