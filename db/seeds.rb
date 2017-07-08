@user = User.create(email: 'test@test.com',
                    password: 'asdfasdf',
                    password_confirmation: 'asdfasdf',
                    first_name: 'Jon',
                    last_name: 'Snow',
                    phone: '9737073878')

puts 'user created'

AdminUser.create(email: 'diva@barty.lina',
                 password: 'asdfasdf',
                 password_confirmation: 'asdfasdf',
                 first_name: 'Diva',
                 last_name: 'Beaner',
                 phone: '9737073878')

puts 'Admin User Created'

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} Iceland plaid letterpress mlkshk flannel thundercats. Microdosing salvia keytar hella plaid. Heirloom try-hard literally, small batch plaid slow-carb butcher austin flexitarian messenger bag. Offal tattooed next level, prism crucifix vice direct trade twee selvage cliche.", user_id: @user.id, overtime_request: 2.5)
end

puts '100 Posts have been created'

100.times do |_audit_log|
  AuditLog.create(user_id: @user.id, status: 0, start_date: (Date.today - 6.days), date_verified: nil)
end

puts '100 Audit Logs have been created'
