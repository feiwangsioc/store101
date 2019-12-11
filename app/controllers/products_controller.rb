class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  
  def show
    @prpduct = Product.find(params[:id])
  end 

end
