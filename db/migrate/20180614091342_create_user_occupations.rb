class CreateUserOccupations < ActiveRecord::Migration[5.1]
  def change
    create_table :user_occupations do |t|
      t.references :user, foreign_key: true
      t.references :occupation, foreign_key: true

      t.timestamps
    end
  end
end
