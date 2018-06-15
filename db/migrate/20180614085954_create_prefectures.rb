class CreatePrefectures < ActiveRecord::Migration[5.1]
  def change
    create_table :prefectures do |t|
      t.string        :name
      t.references    :region
      t.timestamps
    end
  end
end
