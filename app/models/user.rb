class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	# Rails 4 switched from using attr_accessor to something called strong parameters
	# You can fix this problem by changing your app/controllers/applicationcontroller.rb
end
