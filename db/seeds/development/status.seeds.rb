require 'faker'

after 'development:users' do
  User.all.each do |user|
    categories = []

    5.times do
      categories << Category.new(
        tag: Faker::Hacker.verb.capitalize
      )

      status = Status.new(
        title: Faker::Lorem.sentence,
        categories: categories
      )

      user.statuses << status
    end

    if user.save
      puts "Status successfully saved for ##{user.id}"
    else
      puts "Something went wrong while create status #{user.error.messages}"
    end
  end
end
