class WishlistsController < ApplicationController
	def create
    	@product = Product.find(params[:itemid])
 		@anyans = Wishlist.exists?(itemid: params[:itemid])
    	unless @anyans
	    	@addnew = Wishlist.new
			@addnew.username = current_user.id
			@addnew.itemid = @product.id
			#current_user.wishlist(@product)

		    respond_to do |format|
		      if @addnew.save
		        format.html { redirect_to @product, notice: 'Product was successfully added.' }
		        format.json { render :show, status: :created, location: @addnew }
		      else
		        format.html { render :new }
		        format.json { render json: @addnew.errors, status: :unprocessable_entity }
		      end
		    end
    	else
    		respond_to do |format|
    			format.html { redirect_to @product, alert: 'Product is already in your wishlist.' }
      			format.json { head :no_content }
			end
    	end
	end

	def index
		@wishitems = Wishlist.all
		@wishproduct = Product.find_by(params[:id])
	end

	def destroy
    	@delproduct = Wishlist.where(itemid: params[:id]).first
		@delproduct.destroy
    	respond_to do |format|
      		format.html { redirect_to wishlists_path, notice: 'Product was successfully removed.' }
      		format.json { head :no_content }
    	end
	end
end
