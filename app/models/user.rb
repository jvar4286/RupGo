class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :destinations

	def is_normal_user?
		self.permission_level >=1
	end

	def is_editor?
		self.permission_level >=2
	end
 
	def is_admin?
		self.permission_level >=3
	end

end
