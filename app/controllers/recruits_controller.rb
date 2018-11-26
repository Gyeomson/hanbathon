class RecruitsController < ApplicationController
  before_action :user_set, only: [:show, :edit, :update, :destroy]
  def index
    
  end
  def show
  end
  def sign_in
    @user = User.new
  end
  def go
    user = User.where(user_sign_in).take
    redirect_to user_show_path(user.id, user.name)
  end
  def sign_up
    @user = User.new
  end
  def create
    user = User.new(user_params)
    user.save
    redirect_to recruits_url
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_show_url
  end
  
  def destroy
    @user.destroy
    redirect_to recruits_url
  end
  private
    def user_set
      @user = User.find(params[:id])
    end
    def user_params
      params.require(:user).permit(:name, :email, :id_number, :university, :mobile, :major, :text1, :text2, :text3, :text4, :text5)
    end
    def user_sign_in
      params.require(:user).permit(:name, :email, :id_number)
    end
end
