class UserSearchJob < ApplicationRecord
  belongs_to :user
  belongs_to :search_job
end
