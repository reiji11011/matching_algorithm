class CreateUserCompanyTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :user_company_types do |t|
      t.references :user, foreign_key: true
      t.references :company_type, foreign_key: true

      t.timestamps
    end
  end
end
