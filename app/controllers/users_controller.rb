class UsersController < ApplicationController
#POST /users
# POST /users.json
before_action :is_admin, only: [:index,:show]
def create
  @user = User.new(params[:user])

  respond_to do |format|
    if @user.save
      # Tell the UserMailer to send a welcome email after save
      UserMailer.with(user: @user).welcome_email.deliver_later

      format.html { redirect_to(@user, notice: 'User was successfully created.') }
      format.json { render json: @user, status: :created, location: @user }
    else
      format.html { render action: 'new' }
      format.json { render json: @user.errors, status: :unprocessable_entity }
    end
  end
end

def index
  @users = User.all.order("created_at DESC")
end
def show
  @user = User.find_by_username(params[:id])
end

def destroy
  @user = User.find(params[:id])
  @user.destroy

  redirect_to users_path , notice: 'User was successfully Deleted.'
end

def is_admin
  unless current_user.isadmin
      redirect_to :controller => 'posts', :action => 'index'
  end
end
end
