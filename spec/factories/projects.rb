# == Schema Information
#
# Table name: projects
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  user_id    :integer
#  image      :string
#  github     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :project do
    title "MyString"
body "MyText"
member nil
image "MyString"
github "MyString"
  end

end
