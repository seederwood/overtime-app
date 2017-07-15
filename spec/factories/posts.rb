FactoryGirl.define do
  factory :post do
    date Date.today
    work_performed 'Extra stuff'
    daily_hours 12.5
    user
  end

  factory :second_post, class: 'Post' do
    date Date.yesterday
    work_performed 'Normal Work Day'
    daily_hours 8.0
    user
  end
end
