class AddUserIdToSensor < ActiveRecord::Migration[5.0]
  def change
    add_column :sensors, :user_id, :integer
  end
end
