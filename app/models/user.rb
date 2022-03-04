class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :gigs
  has_many :sender_messages, class_name: 'Message', foreign_key: 'sender_id'
  has_many :receiver_messages, class_name: 'Message', foreign_key: 'receiver_id'
  has_many :bookings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
