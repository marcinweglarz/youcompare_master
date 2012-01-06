
 #  @Version Rev 1
 #  @Date 21/12/2011
 #  @author Marcin Weglarz, Student IDx11106832
 #  @reference Laptop_Shop_Tutorial_2 Wesley Gorman
 #
 #

class ClientsController < ApplicationController
  # @reference Laptop_Shop_Tutorial_2 Wesley Gorman
  def new
    @client = Client.new
  end

  # @reference Laptop_Shop_Tutorial_2 Wesley Gorman
   def show
    @client = Client.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @client }
    end
  end
 # @author Marcin Weglarz, Student IDx11106832
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

