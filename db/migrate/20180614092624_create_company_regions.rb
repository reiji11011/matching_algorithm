class CreateCompanyRegions < ActiveRecord::Migration[5.1]
  def change
    create_table :company_regions do |t|
      t.references :company, foreign_key: true
      t.references :region, foreign_key: true

      t.timestamps
    end
  end
end
