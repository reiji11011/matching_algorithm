class UserLanguageLevel < ApplicationRecord
  belongs_to :user
  belongs_to :language_level
end
