class CreateRoomStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :room_statuses do |t|
      t.integer :room_id
      t.integer :user_id
      t.integer :status

      t.timestamps
    end
  end
end
