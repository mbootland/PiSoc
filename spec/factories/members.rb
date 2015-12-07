# == Schema Information
#
# Table name: members
#
#  id              :integer          not null, primary key
#  username        :string
#  password_digest :string
#  first_name      :string
#  last_name       :string
#  email           :string
#  course          :string
#  role            :integer
#  github          :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryGirl.define do
  factory :member do
    username "MyString"
password_digest "MyString"
first_name "MyString"
last_name "MyString"
email "MyString"
course "MyString"
role 1
github "MyString"
  end

end
