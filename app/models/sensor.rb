class Sensor < ApplicationRecord
  belongs_to :user
  has_many :locations
end
