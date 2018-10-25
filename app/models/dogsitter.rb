class Dogsitter < ApplicationRecord
  has_many :dog, through: :stroll
  has_one :city
  has_one :stroll
end
