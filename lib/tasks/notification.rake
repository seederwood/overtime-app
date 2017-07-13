namespace :notification do
  desc 'sends SMS notification to employees asking them to log overtime'
  task sms: :environment do
    if Time.now.sunday?
    end

    # 1. schedule to run on Sunday at 5pm
    # 2. Iterate all employees
    # 3. skip AdminUsers
    # 4. send a message that has instructions and a link to log time
    # User.all.each do |user|
    #   SmsTool.send_sms()
    # end
  end

  desc 'sends mail notification to managers (admin users) daily to inform of pending overtime requests'
  task manager_email: :environment do
    # 1. iterate over the list of pending overtime requests
    # 2. Check to see if there are any requests
    # 3. iterate over list of admin users/managers
    # 4. send email
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count.positive?
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_now
      end
      puts 'Success!'
    end
  end
end
