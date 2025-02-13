class CreateUserDevices < ActiveRecord::Migration[8.0]
  def change
    create_table :user_devices do |t|
      t.string :user_id
      t.string :device_id

      t.timestamps
    end
  end
end
