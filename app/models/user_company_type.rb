class UserCompanyType < ApplicationRecord
  belongs_to :user
  belongs_to :company_type
end
