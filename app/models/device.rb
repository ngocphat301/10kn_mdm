class Device < ApplicationRecord
  acts_as_paranoid

  has_many :user_devices

  enum :os, {
    android: 0,
    ios: 1,
    window: 2
  }, prefix: true
end
