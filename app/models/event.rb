class Event < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :subscriptions
  has_many :subcribers, through: :subscriptions, source: :user

  validates :user, presence: true

  validates :title, presence: true, length: { maximum: 255 }
  validates :address, :datetime, presence: true
end
