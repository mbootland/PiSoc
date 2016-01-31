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
