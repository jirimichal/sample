FactoryGirl.define do
  factory :user do
    name "Jiri Michal"
    email "jiri@ample.com"
    password "foobar"
    password_confirmation "foobar"
  end
end