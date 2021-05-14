class User < ApplicationRecord
  has_many :events

  validates :name, :email, presence: true
  validates :name, length: { maximum: 40 }
  validates :email, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
