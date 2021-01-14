class Player < ApplicationRecord
  has_many :scores
  accepts_nested_attributes_for :scores
end