namespace :notification do
  desc 'sends SMS notification to employees asking them to log overtime'
  task sms: :environment do
    if Time.now.sunday?
      employees = Employee.all
      notification_message = "Please log in to the overtime dashboard to request overtime or confirm your hours for last week: https://rc-ot-app.herokuapp.com"
    
      employees.each do |employee|
        SmsTool.send_sms(number: employee.phone, message: notification_message)
        puts notification_message
      end
    end
  end

  desc 'sends mail notification to managers (admin users) daily to inform of pending overtime requests'
  task manager_email: :environment do
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
