class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :events

  validates :name, length: { maximum: 40 }

  before_validation :set_name, on: :create

  private

  def set_name
    self.name = "Пользователь №#{rand(999)}" if self.name.blank?
  end
end
