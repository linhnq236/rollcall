Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :studytimes
  scope "(:locale)", locale: /en|vn/ do
    resources :departments
    get "/new_department" => "department#new"
    resources :equipment
    get "/controller_equipment" => "equipment#index"
    get "/new_equipment" => "equipment#new"
    resources :timetables
    get "/teacher_timetable" => "timetables#teacher_calendar"
    get "/admin_timetable" => "timetables#index"
    get "/student_timetable" => "timetables#week"
    get "/my_class" => "timetables#teacher_class"
    get "/edit_user" => "user#edit"
    get "/profile" => "user#profile"
    post "/update" => "user#update"
    devise_for :users
    resources :rooms
    get "/new_room" => "rooms#new"
    resources :usercourses
    resources :courses
    get "/new_course" => "courses#new"
    resources :places
    resources :apikeys

    get "/register_course" => "courses#index"
    get "/classTeacher/:course_id" => "usercourses#showAllClassTeacher"
    get "/user_register_course" => "usercourses#user_register_course"
    resources :notices
    get "/new_notice" => "notices#new"
    get "/notice_common" => "notices#notice_common"
    root "notices#index"

  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
