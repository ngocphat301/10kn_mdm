class CreateOrganizations < ActiveRecord::Migration[8.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.text :description
      t.integer :owned_id

      t.timestamps

      t.index :name, unique: true
    end
  end
end
