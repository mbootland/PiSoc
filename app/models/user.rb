# == Schema Information
#
# Table name: users
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

class User < ActiveRecord::Base
  versioned

  has_secure_password

  validates :username, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :role, presence: true, null: false

  enum role: [:admin, :president, :exec, :member, :guest]
  ROLES = User.roles.collect { |s| [s[0].humanize, s[0]] }

  @@current_user = nil

  def self.current_user= current_user
    @@current_user = current_user
  end

  def self.current_user
    @@current_user
  end
end
