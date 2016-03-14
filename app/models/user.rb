# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  username               :string
#  first_name             :string
#  last_name              :string
#  course                 :string
#  role                   :integer
#  github                 :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  failed_attempts        :integer          default(0), not null
#  unlock_token           :string
#  locked_at              :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :projects
  has_many :news

  enum role: [:admin, :president, :exec, :member]

  before_create :set_role


  def self.enabled_roles current_user
    roles = User.roles
    role_id = User.roles[current_user.role]
    roles = roles.select do |key, value|
      res = value >= role_id
      res
    end
  end

  @@params_user = nil

  def self.params_user= params_user
    @@params_user = params_user
  end

  def self.params_user
    @@params_user
  end

  private
  def set_role
    self.role = 'member' if self.role.nil?
  end
end
