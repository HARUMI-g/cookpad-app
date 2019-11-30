class UsersController < ApplicationController
  layout 'users'

  def index
    @users = User.all
  end

  def show
   @user= User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
   @user= User.new(name: params[:name],email: params[:email],password_digest: params[:password_digest])
   if @user.save
     flash[:notice] = 'ユーザーを新規登録しました！'
     redirect_to user_url @user
   else
     render :new
   end
  end

  def edit
    @user= User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password_digest = params[:password_digest]
  end
end
