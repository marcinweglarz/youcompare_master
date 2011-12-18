class ClientsController < ApplicationController
  def new
    @client = Client.new
  end

  def create
    @client = Client.new(params[:client])
    if @client.save
      redirect_to products_path, :notice => 'Client registered successful!'
    else
      render :action => 'new'
    end
  end
end
