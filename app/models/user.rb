class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 has_many :comments

 enum role: [ :author, :moderator, :admin ]

 before_create :define_role

  def define_role
  	self.role = "author" unless self.role.present?
  end

end
