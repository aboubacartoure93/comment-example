class User < ActiveRecord::Base
	has_many :chirps, dependent: :destroy
	has_many :active_relationships, class_name: "Relationship", foreign_key: :follower_id, dependent: :destroy
  has_many :passive_relationshsips, class_name: "Relationship", foreign_key: :followed_id, dependent: :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationshsips, source: :follower
end
