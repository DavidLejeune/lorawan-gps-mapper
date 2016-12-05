class AddUserIdToData < ActiveRecord::Migration[5.0]
  def change
    add_column :data, :sensor_id, :string
  end
end
