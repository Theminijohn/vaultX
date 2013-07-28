class Listing < ActiveRecord::Base

	validates :description, :presence => true

	validates :title, :presence => true, length: { maximum: 40 }

	validates :user_id, presence: true

	validates_attachment :image, presence: true,
											 content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
											 size: { less_than: 5.megabytes }

	belongs_to :user

	# Paperclip
	has_attached_file :image, :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
										:url => "/system/:attachment/:id/:style/:filename"

end
