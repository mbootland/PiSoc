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
end
