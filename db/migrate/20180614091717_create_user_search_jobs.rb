class CreateUserSearchJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :user_search_jobs do |t|
      t.references :user, foreign_key: true
      t.references :search_job, foreign_key: true

      t.timestamps
    end
  end
end
