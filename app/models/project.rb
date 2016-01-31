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

class Project < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true
  validates :user_id, presence: true

  scope :details, -> {
    select('projects.*, users.first_name as first_name, users.last_name as last_name')
    .joins(:user)
  }

end
