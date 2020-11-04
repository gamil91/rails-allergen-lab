class Ingredient < ApplicationRecord
    has_many :foods
    has_many :recipes, through: :foods
    has_many :allergies
    has_many :users, through: :allergies
    validates :name, presence:true, uniqueness:true
end
 