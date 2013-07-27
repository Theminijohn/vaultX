class Listing < ActiveRecord::Base

	validates :description, :presence => true

	validates :title, :presence => true, length: { maximum: 40 }

	validates :user_id, presence: true

	belongs_to :user

end
