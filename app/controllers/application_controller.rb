class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authorize

  def current_user
    # Time.zone = 'Pacific/Honolulu'
    @_current_user ||= session[:current_user_id] &&
        User.enabled.find_by({ id: session[:current_user_id] })
    I18n.locale = @_current_user.locale if @_current_user and !@_current_user.locale.blank?
    User.current_user = @_current_user
    @_current_user
  end
  helper_method :current_user

  private
  def authorize
    pars = {}
    pars[:redirect_path] = request.fullpath unless request.fullpath.blank? or request.fullpath == '/'
    redirect_to login_users_path(pars) if !current_user
  end
end
