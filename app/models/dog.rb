class Dog < ApplicationRecord
  has_many :dogsitter, through: :stroll
  has_one :city
  has_one :stroll
end
