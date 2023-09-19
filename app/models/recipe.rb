class Recipe < ApplicationRecord
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :user
    belongs_to :cooking_time

    has_one_attached :image

    validates :image, presence: true
    validates :name, presence: true
    validates :cooking_time_id, presence: true, numericality: { other_than: 1 }
    validates :food, presence: true
    validates :cooking_method, presence: true
end
