class Listing < ActiveRecord::Base

	validates :description, :presence => true

	validates :title, :presence => true, length: { maximum: 15 }

end
