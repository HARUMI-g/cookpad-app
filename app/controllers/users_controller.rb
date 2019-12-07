class UsersController < ApplicationController
  layout 'users'

  def index
    @users = User.all.order(created_at: :desc)
  end

  def show
    @user= User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user= User.new(user_params)
    if @user.save
    redirect_to action: 'index', flash: {success: 'ユーザーを新規登録しました'}
  else
    render :new
  end
end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to action: 'show', flash: {success: 'ユーザー情報を編集しました'}
    else
      render :edit
    end
  end

  def destroy
    user= User.find(params[:id])
    user.destroy
    redirect_to users_index_url
  end

  private
  def user_params
    params.require(:user). permit(:name, :email, :password_digest)
  end
end
