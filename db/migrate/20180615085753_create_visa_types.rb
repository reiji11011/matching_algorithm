class CreateVisaTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :visa_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
