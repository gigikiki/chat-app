class Room < ApplicationRecord
 
  def change
    create_table :rooms do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
  validates :name, presence: true
  has_many :room_users, dependent: :destroy
  has_many :users, through: :room_users  
  has_many :messages, dependent: :destroy

end
