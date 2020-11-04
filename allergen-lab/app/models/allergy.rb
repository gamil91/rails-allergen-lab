class Allergy < ApplicationRecord
  belongs_to :ingredient
  belongs_to :user
  validates :ingredient, uniqueness: {scope: :user}
end
