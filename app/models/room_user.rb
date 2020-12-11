class RoomUser < ApplicationRecord
  def change
    create_table :room_users do |t|
      t.references :room, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end

  belongs_to :room
  belongs_to :user
end
