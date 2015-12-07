# == Schema Information
#
# Table name: news
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :news do
    title "MyString"
body "MyText"
member nil
  end

end
