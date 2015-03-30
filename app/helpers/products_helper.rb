module ProductsHelper
	def catg_name(catgid)
		@catg_name = Catg.where(id: catgid).pluck(:name).first
		return @catg_name
	end
end
