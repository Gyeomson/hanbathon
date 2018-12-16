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
    @bool = User.where(user_email).exists?
    user = User.where(user_email).take
    if User.where(user_email).exists?
      redirect_to user_show_url(user.id, user.name)
    end
  end
  
  def sign_up
      @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    @user.valid?
    if @user.valid?  #유효성 검사후 에러 추출
      @user.save
      redirect_to recruits_url
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.valid?
    @user.update(user_params)
    if @user.valid?
      redirect_to user_show_url
    end
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
      params.require(:user).permit(:name, :email, :id_number, :university, :grade, :mobile, :major, :text1, :text2, :text3, :text4, :text5)
    end
    def user_sign_in
      params.require(:user).permit(:name, :email, :id_number)
    end
    def user_email
      params.require(:user).permit(:email)
    end
end