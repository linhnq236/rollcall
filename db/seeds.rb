# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
[
  {id:1, email: 'admin@gmail.com', password: 'Linh236!@#', password_confirmation: 'Linh236!@#', admin: 2, name: 'Admin'},
  {id:2, email: 'teacher@gmail.com', password: '123456', password_confirmation: '123456', admin: 1, name: 'Teacher'},
  {id:3, email: 'teacher1@gmail.com', password: '123456', password_confirmation: '123456', admin: 1, name: 'Teacher1'},
  {id:4, email: 'student@gmail.com', password: '123456', password_confirmation: '123456', admin: 0, name: 'Student'},
  {id:5, email: 'student1@gmail.com', password: '123456', password_confirmation: '123456', admin: 0, name: 'Student1'},
].each do |attr|
  user = User.find_by(id: attr[:id])
  User.transaction do
    unless user
      user = User.new(attr)
      user.save
    else
      user.update_attributes attr
    end
  end
end

[
  {id: 1, room_code: 'H01', room_name: 'H01'},
  {id: 2, room_code: 'H02', room_name: 'H02'},
  {id: 3, room_code: 'H03', room_name: 'H03'},
  {id: 4, room_code: 'H04', room_name: 'H04'},
].each do |attr|
  room = Room.find_by(id: attr[:id])
  Room.transaction do
    unless room
      room = Room.new(attr)
      room.save
    else
      room.update_attributes attr
    end
  end
end
[
  {id: 1, code: 'CR01', content: 'DANH CHO NGUOI MOI BAT DAU', course_name: 'RUBY ON RAILS', start: '2019-10-20', end: '2019-12-20'},
  {id: 2, code: 'CRO2', content: 'DANH CHO NGUOI MOI BAT DAU', course_name: 'JAVA', start: '2019-10-25', end: '2019-12-25'},
  {id: 3, code: 'CRO3', content: 'DANH CHO NGUOI MOI BAT DAU', course_name: 'C#', start: '2019-10-10', end: '2019-01-10'},
  {id: 4, code: 'CRO4', content: 'DANH CHO NGUOI MOI BAT DAU', course_name: 'JAVASCIRPT', start: '2019-10-30', end: '2019-01-30'},
].each do |attr|
  course = Course.find_by(id: attr[:id])
  Course.transaction do
    unless course
      course = Course.new(attr)
      course.save
    else
      course.update_attributes attr
    end
  end
end

[
  {id: 1, department_code: 'IT', department_name: 'CÔNG NGHỆ THÔNG TIN'},
  {id: 2, department_code: 'HH', department_name: 'HÀNG HẢI'},
  {id: 3, department_code: 'KTVT', department_name: 'KINH TẾ VẬN TẢI'},
  {id: 4, department_code: 'CNOT', department_name: 'CÔNG NGHỆ Ô TÔ'},
].each do |attr|
  department = Department.find_by(id: attr[:id])
  Department.transaction do
    unless department
      department = Department.new(attr)
      department.save
    else
      department.update_attributes attr
    end
  end
end
[
  {id: 1,name: 'AIzaSyCLStjzG8YCvLJhFGZYBTU2I2P8tZg2StE'},
].each do |attr|
  apikey = Apikey.find_by(id: attr[:id])
  Apikey.transaction do
    unless apikey
      apikey = Apikey.new(attr)
      apikey.save
    else
      apikey.update_attributes attr
    end
  end
end
[
  {id: 1,equiqment_name: 'Đèn 13', active: false},
  {id: 2,equiqment_name: 'Đèn 14', active: false},
  {id: 3,equiqment_name: 'Đèn 15', active: false},
].each do |attr|
  equipment = Equipment.find_by(id: attr[:id])
  Equipment.transaction do
    unless equipment
      equipment = Equipment.new(attr)
      equipment.save
    else
      equipment.update_attributes attr
    end
  end
end
