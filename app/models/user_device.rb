class UserDevice < ApplicationRecord
  belongs_to :user, optional: false
  belongs_to :device, optional: false
end
