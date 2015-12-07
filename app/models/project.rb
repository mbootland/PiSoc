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
end
