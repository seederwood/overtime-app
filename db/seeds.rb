@employee = Employee.create(email: 'test@test.com',
                    password: 'asdfasdf',
                    password_confirmation: 'asdfasdf',
                    first_name: 'Jon',
                    last_name: 'Snow',
                    phone: '9737073878',
                    ssn: 1234,
                    company: 'Beaner Pro International')

puts 'employee created'

AdminUser.create(email: 'diva@barty.lina',
                 password: 'asdfasdf',
                 password_confirmation: 'asdfasdf',
                 first_name: 'Diva',
                 last_name: 'Beaner',
                 phone: '9737073878',
                 ssn: 2468,
                 company: 'Beaner Pro International')

puts 'Admin user Created'


AuditLog.create(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))

puts '3 Audit Logs have been created'


100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} Iceland plaid letterpress mlkshk flannel thundercats. Microdosing salvia keytar hella plaid. Heirloom try-hard literally, small batch plaid slow-carb butcher austin flexitarian messenger bag. Offal tattooed next level, prism crucifix vice direct trade twee selvage cliche.", user_id: @employee.id, daily_hours: 12.5)
end

puts '100 Posts have been created'

