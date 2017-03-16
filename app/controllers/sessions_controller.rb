class SessionsController < ApplicationController
    
  def new
  end

  def create
    @user = Admin.find_by(admin_name: params[:admin_name])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to admin_path
    else

      redirect_to '/login'
    end      
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path      
  end
  
end
