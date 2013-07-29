class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	# Rails 4 switched from using attr_accessor to something called strong parameters
	# You can fix this problem by changing your app/controllers/applicationcontroller.rb

	has_many :listings, :dependent => :destroy

	has_attached_file :avatar, :styles => { :medium => "300x300>",
																					:thumb => "100x100>",
																					:avatar => "48x48>" },
										:default_url => "http://placehold.it/150x150&text=Missing"
end
