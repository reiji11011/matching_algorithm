class CreateUserCultures < ActiveRecord::Migration[5.1]
  def change
    create_table :user_cultures do |t|
      t.references :user, foreign_key: true
      t.references :culture, foreign_key: true

      t.timestamps
    end
  end
end
