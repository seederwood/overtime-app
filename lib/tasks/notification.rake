namespace :notification do
  desc 'sends SMS notification to employees asking them to log overtime'
  task sms: :environment do
    # 1. schedule to run on Sunday at 5pm
    # 2. Iterate all employees
    # 3. skip AdminUsers
    # 4. send a message that has instructions and a link to log time
    # User.all.each do |user|
    #   SmsTool.send_sms()
    # end
    # number: '555-555-1212'
    # number: '5555551212'
    # no spaces or dashes
    # exactly 10 charcters long
    # all characters must be numbers
  end
end
