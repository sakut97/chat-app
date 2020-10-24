class Room < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :room_users
  has_many :users, through: :room_users
  has_many :messages
  validates :name, presence: true

end
