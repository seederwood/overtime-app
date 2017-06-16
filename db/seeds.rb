@user = User.create(email: 'test@test.com', password: 'asdfasdf', password_confirmation: 'asdfasdf', first_name: 'Jon', last_name: 'Snow')

puts 'user created'

AdminUser.create(email: 'diva@barty.lina', password: 'asdfasdf', password_confirmation: 'asdfasdf', first_name: 'Diva', last_name: 'Beaner')

puts 'Admin User Created'

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts '100 Posts have been created'
