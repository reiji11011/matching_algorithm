class CreateCultures < ActiveRecord::Migration[5.1]
  def change
    create_table :cultures do |t|
      t.string :name

      t.timestamps
    end
  end
end
