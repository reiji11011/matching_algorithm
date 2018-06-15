class CreateMajors < ActiveRecord::Migration[5.1]
  def change
    create_table :majors do |t|
      t.string :name
      t.string :code
      t.references :major_category, foreign_key: true

      t.timestamps
    end
  end
end
