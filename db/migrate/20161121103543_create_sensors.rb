class CreateSensors < ActiveRecord::Migration[5.0]
  def change
    create_table :sensors do |t|
      t.string :name
      t.string :description
      t.integer :EUI_device

      t.timestamps
    end
  end
end
