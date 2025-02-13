class UserOrganization < ApplicationRecord
  belongs_to :users, optional: false
  belongs_to :organizations, optional: false
end
