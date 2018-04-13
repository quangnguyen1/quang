
User.create!(name:  "Quang",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar")

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end
User.create!(name:  "quangadmin",
             email: "quangnguyen201196@gmail.com",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)