class UsersController < ApplicationController

 before_action :set_user, only: [:show, :edit, :update, :destroy, :coffee2, :coffee3, :coffee4]


  def index
    @users = User.all
  end

  def show
    # @user = User.find_by(:id => session[:user_id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.email = params[:email]
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]
    @user.phone = params[:phone]
    @user.address = params[:address]
    @user.city = params[:city]
    @user.state = params[:state]
    @user.zip = params[:zip]
    @user.roast = params[:roast]
    @user.make_coffee = params[:make_coffee]
    @user.drink_coffee = params[:drink_coffee]

    if @user.save
      session[:user_id] = @user.id
      redirect_to coffee_url
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password = params[:password]
    @user.password_digest = params[:password_digest]
    @user.phone = params[:phone]
    @user.address = params[:address]
    @user.city = params[:city]
    @user.state = params[:state]
    @user.zip = params[:zip]
    @user.roast = params[:roast]

    if @user.save
      redirect_to users_url
    else
      render 'edit'
    end
  end

  def destroy
    @user.destroy

    redirect_to users_url, notice: "Account deleted."
  end

  def coffee2
  end

  def coffee3
  end

  def coffee4
  end

private

  def set_user
    @user = User.find(session[:user_id])
  end


end
