FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@test.com"
  end

  factory :user do
    first_name 'Jon'
    last_name 'Snow'
    email { generate :email }
    password 'asdfasdf'
    password_confirmation 'asdfasdf'
    phone '5555551212'
    ssn 1234
    company 'Beaner Pro International'
  end

  factory :admin_user, class: 'AdminUser' do
    first_name 'Beaner'
    last_name 'Diva'
    email 'diva@barty.lina'
    password 'asdfasdf'
    password_confirmation 'asdfasdf'
    phone '5555551212'
    ssn 2468
    company 'Beaner Pro International'
  end
end
