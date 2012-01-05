class ClientsController < ApplicationController
  def new
    @client = Client.new
  end

   def show
    @client = Client.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @client }
    end
  end

  def create
    @client = Client.new(params[:client])
    respond_to do |format|
      if @client.save
        format.html { redirect_to(@client, :notice => 'Thank you very much for registering your account with us.') }
        format.xml { render :xml => @client, :status => :created, :location => @client }
      else
        format.html { render :action => "new" }
        format.xml { render :xml => @client.errors, :status => :unprocessable_entity }

      end
    end
  end
end

