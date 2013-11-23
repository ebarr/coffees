class SessionsController < ApplicationController

  def new

  end

  def destroy
    reset_session
    redirect_to root_url, notice: "See ya!"
  end

  def create
    user = User.find_by(email: params[:email])
    if user.present?
      if user.authenticate(params[:password])
        # Yay!
        session[:user_id] = user.id
        redirect_to coffee_url
      else

        render 'new'
      end
    else

      render 'new'
    end
  end
end




