class PackageOfProductsController < ApplicationController
  # GET /package_of_products
  # GET /package_of_products.xml
  def index
    @package_of_products = PackageOfProduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @package_of_products }
    end
  end

  # GET /package_of_products/1
  # GET /package_of_products/1.xml
  def show
    @package_of_product = PackageOfProduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @package_of_product }
    end
  end

  # GET /package_of_products/new
  # GET /package_of_products/new.xml
  def new
    @package_of_product = PackageOfProduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @package_of_product }
    end
  end

  # GET /package_of_products/1/edit
  def edit
    @package_of_product = PackageOfProduct.find(params[:id])
  end

  # POST /package_of_products
  # POST /package_of_products.xml
  def create
    @package_of_product = PackageOfProduct.new(params[:package_of_product])

    respond_to do |format|
      if @package_of_product.save
        format.html { redirect_to(@package_of_product, :notice => 'Package of product was successfully created.') }
        format.xml  { render :xml => @package_of_product, :status => :created, :location => @package_of_product }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @package_of_product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /package_of_products/1
  # PUT /package_of_products/1.xml
  def update
    @package_of_product = PackageOfProduct.find(params[:id])

    respond_to do |format|
      if @package_of_product.update_attributes(params[:package_of_product])
        format.html { redirect_to(@package_of_product, :notice => 'Package of product was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @package_of_product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /package_of_products/1
  # DELETE /package_of_products/1.xml
  def destroy
    @package_of_product = PackageOfProduct.find(params[:id])
    @package_of_product.destroy

    respond_to do |format|
      format.html { redirect_to(package_of_products_url) }
      format.xml  { head :ok }
    end
  end
end
