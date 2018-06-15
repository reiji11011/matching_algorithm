class CreateLanguageLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :language_levels do |t|
      t.string :name

      t.timestamps
    end
  end
end
