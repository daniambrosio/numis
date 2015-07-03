FactoryGirl.define do

  factory :user do
    first_name "Regular"
    last_name "User"
    email "regularuser@gmail.com"
    roles ['some']
    password 'administrator'
    password_confirmation 'administrator'
  end

  factory :confirmed_user, :class => :user do
    first_name "Regular"
    last_name "User"
    email "regularuser@gmail.com"
    roles ['some']
    password 'administrator'
    password_confirmation 'administrator'
    confirmed_at = Time.now
  end

end
