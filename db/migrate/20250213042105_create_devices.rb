class CreateDevices < ActiveRecord::Migration[8.0]
  def change
    create_table :devices do |t|
      t.string :name
      t.integer :os
      t.text :description

      t.timestamps

      t.index :name, unique: true
    end
  end
end
