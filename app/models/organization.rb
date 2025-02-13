class Organization < ApplicationRecord
  has_many :user_organizations

  validates :owned_id, presence: true
end
