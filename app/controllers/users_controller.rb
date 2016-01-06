class UsersController < ApplicationController
  before_action :set_user, only: [:index, :show, :edit, :update, :destroy]
  before_action :authorize, except: [:login, :do_login]
  load_and_authorize_resource except: [:logout, :login, :do_login]

  def do_login
    user = User.find_by({ username: params[:username] })

    if user and user.authenticate(params[:password])
      session[:current_user_id] = user.id
      redirect_to params[:redirect_path] and return if params[:redirect_path]
      redirect_to root_path, notice: "#{ current_user.first_name }, you have been logged in successfully"
    else
      flash[:the_class] = 'danger'
      redirect_to login_users_path(redirect_path: params[:redirect_path]), notice: 'Incorrect login details'
    end
  end

  def logout
    flash[:the_class] = 'success'
    @_current_user = session[:current_user_id] = session[:old_current_user_id] = nil
    redirect_to login_users_path, notice: 'Successfully logged out'
  end

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.current_user ||= User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :first_name, :last_name, :email, :course, :role, :github)
  end
end
