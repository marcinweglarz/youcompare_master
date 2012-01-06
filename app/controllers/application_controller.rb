
 #  @Version Rev 1
 #  @Date 21/12/2011
 #  @author Marcin Weglarz, Student IDx11106832
 #  @reference Laptop_Shop_Tutorial_2 Wesley Gorman
 #
 #
class ApplicationController < ActionController::Base
  protect_from_forgery

  protected
  def current_client
    return unless session[:client_id]
    @current_client ||= Client.find_by_id(session[:client_id])
  end

  helper_method :current_client

  def authenticate
    logged_in? ? true : access_denied
  end

  def logged_in?
    current_client.is_a? Client
  end

  helper_method :logged_in?
  def access_denied
    redirect_to login_path, :notice => "Please log in to continue" and return false
  end

  #Ref @ Agile Web Development
  private

    def current_cart

      Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      cart = Cart.create
      session[:cart_id] = cart.id
      cart
    end

end
