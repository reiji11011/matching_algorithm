class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string      :first_name
      t.string      :middle_name
      t.string      :last_name
      t.string      :email
      t.date        :birthday
      t.integer     :gender
      t.string      :nationality
      t.string      :phone
      t.string      :university
      t.string      :graduate_year
      t.string      :uid
      t.string      :provider
      t.text        :access_token
      t.text        :description
      t.text        :public_profile_url
      t.integer     :major_id
      t.integer     :major_category_id
      t.string      :visa_type
      t.string      :status
      t.timestamps
    end
  end
end
