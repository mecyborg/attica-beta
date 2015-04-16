require 'elasticsearch/model'
class Product < ActiveRecord::Base
	has_attached_file :avatar, :styles => {:large => "350x350>", :medium => "200x200>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	belongs_to :catgs
  	belongs_to :wishlists
  	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  	validates_presence_of :name, :price, :discount, :description, :category,:instock,:avatar
  	include Elasticsearch::Model
  	include Elasticsearch::Model::Callbacks
end

Product.import # for auto sync model with elastic search