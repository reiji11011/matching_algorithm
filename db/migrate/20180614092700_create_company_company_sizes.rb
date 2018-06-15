class CreateCompanyCompanySizes < ActiveRecord::Migration[5.1]
  def change
    create_table :company_company_sizes do |t|
      t.references :company, foreign_key: true
      t.references :company_size, foreign_key: true

      t.timestamps
    end
  end
end
