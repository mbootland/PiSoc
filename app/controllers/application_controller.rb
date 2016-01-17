class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_abilities

  private
  def set_abilities
    Ability.new current_user
  end

  def after_sign_out_path_for(resource_or_scope)
    flash[:css_class] = 'success'
    user_session_path
  end
end
