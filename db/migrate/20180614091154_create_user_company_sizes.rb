class CreateUserCompanySizes < ActiveRecord::Migration[5.1]
  def change
    create_table :user_company_sizes do |t|
      t.references :user, foreign_key: true
      t.references :company_size, foreign_key: true

      t.timestamps
    end
  end
end
