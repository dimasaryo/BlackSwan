class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable, :confirmable,
         :lockable, :timeoutable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name
  # attr_accessible :title, :body

  #validates :first_name, presence: true,
  #                       length: {maximum: 20}
  #validates :last_name, presence: true,
  #                      length: {maximum: 20}

  has_many :posts, class_name: "Post", foreign_key: "creator_id"
end
