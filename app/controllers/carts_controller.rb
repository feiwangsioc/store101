class CartsController < ApplicationController
  
  def clean
    current_cart.clean!
    flash[:warning] = "The cart is empty"
    redirect_to carts_path
  end

   def update
     @cart = current_cart
     @cart_item = @cart.cart_items.find_by(product_id: params[:id])
     @cart_item.update(cart_item_params)

     redirect_to carts_path
   end
   
   def checkout
     @order = Order.new
   end

   private

   def cart_item_params
     params.require(:cart_item).permit(:quantity)
   end


end
