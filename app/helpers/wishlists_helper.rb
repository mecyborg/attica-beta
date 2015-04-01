module WishlistsHelper
	def itemdetails(productid)
	@itemdetails = Product.where(id: productid).first
	end	
end
