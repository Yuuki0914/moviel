class Movie < ApplicationRecord
    belongs_to :user 
    has_many :likes, dependent: :destroy
    has_many :liked_users, through: :likes, source: :user
    has_many :comments, dependent: :destroy
    has_many :movie_tag_relations, dependent: :destroy
    has_many :tags, through: :movie_tag_relations, dependent: :destroy
    mount_uploader :image, ImageUploader
end