class UsersController < ApplicationController
  before_action :require_user_logged_in, only: [:index, :show, :edit, :update, :destroy, :followings, :followers]
  before_action :admin_user, only: :destroy
 
  
  def index
    @users = User.order(id: :desc).page(params[:page]).per(3)
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.order(id: :desc).page(params[:page])
    counts(@user)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create!(user_params)
    if @user.save
      flash[:success] = 'ユーザを登録しました。'
      redirect_to @user
    else
      flash.now[:danger] = 'ユーザの登録に失敗しました。'
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if current_user == @user
      if @user.update_attributes(user_params)
        flash[:success] = "プロフィール更新完了"
        redirect_to @user
      else
        render 'edit'
      end
    else
        redirect_to root_url
    end
  end

  def destroy
    @user.destroy
    flash[:success] = "ユーザー削除しました"
    redirect_to users_path
  end
  
  def followings
    @user = User.find(params[:id])
    @followings = @user.followings.page(params[:page])
    counts(@user)
  end
  
  def followers
    @user = User.find(params[:id])
    @followers = @user.followers.page(params[:page])
    counts(@user)
  end
  
  def favorites
    @user = User.find(params[:id])
    @favposts = @user.favposts.page(params[:page])
    counts(@user)
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :introduction, :image)
  end
  
  def admin_user
    @user = User.find(params[:id])
    unless @user == current_user || current_user.admin?
      redirect_to root_url
    end
  end
end
