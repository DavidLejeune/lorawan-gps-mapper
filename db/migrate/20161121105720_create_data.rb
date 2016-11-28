class CreateData < ActiveRecord::Migration[5.0]
  def change
    create_table :data do |t|
      t.float :longitude
      t.float :latitude
      t.integer :height
      t.integer :accuracy

      t.timestamps
    end
  end
end
