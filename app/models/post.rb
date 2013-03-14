class Post < ActiveRecord::Base
  attr_accessible :category_id, :content, :cover, :creator_id, :description, :published_at, :title

  validates :title, presence: true,
            length: {maximum: 128}
  validates :description, presence: true,
            length: {maximum: 256}
  validates :content, presence: true
  validates :creator_id, presence: true
  validates :category_id, presence: true
  validates :cover, length: {maximum: 256}

  belongs_to :category
  belongs_to :creator, class_name: "User", foreign_key: "creator_id"

end
