# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name:  "Example User",
             email: "tmc@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             gender: "Male",
             address: "thanh xuan",
             phone_number: "0111111",
             birthday: "10-10-1997",
             admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  phone_number = "012345678"
  gender = "Male"
  address = "cau giay"
  birthday = "10-10-1997"

  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               gender: gender,
               address: address,
               phone_number: phone_number,
               birthday: birthday)
end
