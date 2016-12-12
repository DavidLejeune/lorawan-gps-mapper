class Sensor < ApplicationRecord
  #belongs_to :user
  has_many :data

  def show_since date = Time.now - 24.hours
    data.where("created_at >= ?",date)
  end


end
