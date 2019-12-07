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
    flash[:notice] = 'ユーザーを新規登録しました！'
    redirect_to users_index_url @user
  else
    render :new
  end
end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password_digest = params[:password_digest]
    if @user.save
      flash[:notice] = "ユーザー情報を編集しました。"
      redirect_to user_url @user
    else
      render :edit
    end
  end

  def destroy
    @user= User.find(params[:id])
    @user.destroy
    redirect_to users_index_url @user
  end

  def user_params
    params.require(:user). permit(:name, :email, :password_digest)
  end
end
