class UsersController < ApplicationController
  before_action :ensure_correct_user, only: [:edit, :update]
<<<<<<< HEAD
  before_action :authenticate_user!
  
=======

>>>>>>> ffcab96c2a58ab026ee9112d49eae8d1d20e3463
  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def index
    @users = User.all
    @book = Book.new
<<<<<<< HEAD
  end
  
=======

>>>>>>> ffcab96c2a58ab026ee9112d49eae8d1d20e3463
  def edit
    @user = User.find(params[:id])
  end

  def update
<<<<<<< HEAD
    if @user.update(user_params)
      redirect_to user_path(@user), notice: "You have updated user successfully."
    else
      render "edit"
    end
=======
     @user = User.find(params[:id])
     if @user.update(user_params)
        redirect_to user_path(@user), notice: "successfully updated user!"
     else
        render "edit"
     end
>>>>>>> ffcab96c2a58ab026ee9112d49eae8d1d20e3463
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

  def ensure_correct_user
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to user_path(current_user)
    end
  end
end
