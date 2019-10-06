Rails.application.routes.draw do
  resources :timetables
  get "/teacher_timetable" => "timetables#teacher_calendar"
  get "/admin_timetable" => "timetables#index"
  get "/student_timetable" => "timetables#week"
  devise_for :users
  resources :notices
  resources :rooms
  resources :usercourses
  resources :teachers
  resources :courses
  resources :places
  resources :apikeys
  get "/register_course" => "courses#index"
  get "/user_register_course" => "usercourses#user_register_course"
  root "courses#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
