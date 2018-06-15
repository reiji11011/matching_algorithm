class CreateUserLanguageLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :user_language_levels do |t|
      t.references :user, foreign_key: true
      t.references :language_level, foreign_key: true

      t.timestamps
    end
  end
end
