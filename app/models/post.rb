class Post < ApplicationRecord
    has_many :likes
    has_many :likers, through: :likes, source: :user
    has_many :comments
    has_many :commenters, through: :comments, source: :user
end
