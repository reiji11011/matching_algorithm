class CreateCompanySizes < ActiveRecord::Migration[5.1]
  def change
    create_table :company_sizes do |t|
      t.string :name

      t.timestamps
    end
  end
end
