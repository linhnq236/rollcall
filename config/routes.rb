Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vn/ do
    resources :departments
    resources :teachers
    resources :equipment
    get "/controller_equipment" => "equipment#index"
    resources :timetables
    get "/teacher_timetable" => "timetables#teacher_calendar"
    get "/admin_timetable" => "timetables#index"
    get "/student_timetable" => "timetables#week"
    get "/my_class" => "timetables#teacher_class"
    get "/edit_user" => "user#edit"
    get "/profile" => "user#profile"
    post "/update" => "user#update"
    devise_for :users
    resources :notices
    resources :rooms
    resources :usercourses
    resources :courses
    resources :places
    resources :apikeys

    get "/register_course" => "courses#index"
    get "/classTeacher/:course_id" => "usercourses#showAllClassTeacher"
    get "/user_register_course" => "usercourses#user_register_course"
    root "courses#index"
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
