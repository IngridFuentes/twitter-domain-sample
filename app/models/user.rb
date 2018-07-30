class User < ApplicationRecord
  has_many :following_relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy

  has_many :followed_relationships, class_name: "Relationship", foreign_key: "followed_id"

  has_many :following, through: :following_relationships, source: :followed

  has_many :followers, through: :followed_relationships, source: :follower
end
