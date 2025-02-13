class User < ApplicationRecord
  acts_as_paranoid

  has_many :user_devices, dependent: :destroy
  has_many :user_organizations, dependent: :destroy

  NAME_MAX_LENGTH = 12

  validates :name,
            presence: true,
            length: { maximum: NAME_MAX_LENGTH }

  enum :role, {
    admin: 0,
    user: 1,
    guest: 2
  }, prefix: true, default: 1
end
