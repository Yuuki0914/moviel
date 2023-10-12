class Tag < ApplicationRecord
    validates :name, presence: true
    has_many :movie_tag_relations, dependent: :destroy
    has_many :movies, through: :movie_tag_relations, dependent: :destroy
end