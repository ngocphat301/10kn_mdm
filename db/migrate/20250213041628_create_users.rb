class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :role
      t.timestamps

      t.index :name, unique: true
    end
  end
end
