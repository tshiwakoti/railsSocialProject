require 'faker'

20.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: Faker::Internet.user_name,
    email: Faker::Internet.email,
    password: 'password'
  )

  if user.save
    puts "User successfully created #{user.first_name}"
  else
    puts "Something went wrong for user #{user.first_name}: #{user.errors.messages}"
  end
end
