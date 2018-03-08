class UsersController < ApplicationController
  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      login(@user)
      flash.now[:success] = "Successfully created your account!"
      redirect_to new_session_url
    else
      flash.now[:errors] = [ "Invalid credentials" ]
      render :new
    end
  end

  def show
    render :show
  end

  private

  def user_params
    params.require(:users).permit(:email, :password)
  end
end
