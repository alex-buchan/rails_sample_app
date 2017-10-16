class UsersController < ApplicationController
  def signup
  end
  def index
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
    # debugger
    # Debugger command allows you to access stuff in the command line server tab
    # In the tab where the server is running type >>> @user
    # cool right!!
  end
  def new
    @user = User.new
  end

  def create 
    @user = User.new(user_params)    # Not the final implementation!
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
      # Handle a successful save.
    else
      render 'new'
    end
  end
  # def update
  # end
  # def destroy
  # end

  private 
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
