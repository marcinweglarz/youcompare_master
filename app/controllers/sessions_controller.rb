class SessionsController < ApplicationController
def new

end

  def create
    if client = Client.authenticate(params[:email], params[:password])
      session[:client_id] = client.id
      redirect_to store_path, :notice => "Logged in successfully"
    else
      flash.now[:alert] = "Invalid login/password combination"
      render :action => 'new'
    end
  end

  def destroy
    reset_session
    redirect_to user_product_path, :notice => "You are successfully logged out"
  end
end
