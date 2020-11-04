class Recipe < ApplicationRecord
  belongs_to :user
  has_many :foods, dependent: :destroy
  has_many :ingredients, through: :foods
  validates :name, presence:true
  validates :meal_type, presence:true, inclusion:{in: %w(Breakfast Lunch Dinner Sweets)}
end
