class SessionsController < ApplicationController

  def new
  end

  def create
    puts "hello"
    user = User.find_by(email: params[:session][:email].downcase)
    puts user.inspect
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in user
      redirect_to user
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
  end
end
