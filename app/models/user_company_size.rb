class UserCompanySize < ApplicationRecord
  belongs_to :user
  belongs_to :company_size
end
