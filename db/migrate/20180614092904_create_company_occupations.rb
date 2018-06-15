class CreateCompanyOccupations < ActiveRecord::Migration[5.1]
  def change
    create_table :company_occupations do |t|
      t.references :company, foreign_key: true
      t.references :occupation, foreign_key: true

      t.timestamps
    end
  end
end
