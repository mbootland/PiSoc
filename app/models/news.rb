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

class News < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true, length: { minimum: 3 }
  validates :body, presence: true
  validates :user_id, presence: true

  scope :details, -> {
    select('news.*, users.first_name as first_name, users.last_name as last_name')
    .joins(:user)
  }
end
