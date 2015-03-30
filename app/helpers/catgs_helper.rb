module CatgsHelper
	def prod_count(catgid)
		@prod_count = Product.where(category: catgid).count
		return @prod_count
	end
end
