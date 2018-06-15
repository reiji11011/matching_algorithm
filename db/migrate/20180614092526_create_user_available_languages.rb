class CreateUserAvailableLanguages < ActiveRecord::Migration[5.1]
  def change
    create_table :user_available_languages do |t|
      t.references :user, foreign_key: true
      t.references :available_language, foreign_key: true

      t.timestamps
    end
  end
end
