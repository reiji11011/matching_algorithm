class CreateAvailableLanguages < ActiveRecord::Migration[5.1]
  def change
    create_table :available_languages do |t|
      t.string :name

      t.timestamps
    end
  end
end
