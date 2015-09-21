class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    puts "User is #{@user.inspect}"
    if @user and @user.password == params[:password]
      session[:user_id] = @user.id
      redirect_to chirps_path, notice: "Your logged in!"
    else
      redirect_to login_path, notice: "You login info was not correct!"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to chirps_path, notice: "Your logged out!"
  end
end
 