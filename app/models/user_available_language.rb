class UserAvailableLanguage < ApplicationRecord
  belongs_to :user
  belongs_to :available_language
end
