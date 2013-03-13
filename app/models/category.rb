class Category < ActiveRecord::Base
  attr_accessible :description, :name

  validates :name, presence: true,
            length: {maximum: 30}

  has_many :posts
end
