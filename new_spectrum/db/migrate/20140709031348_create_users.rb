class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.string :company_name
      t.string :tel_number
      t.string :cp_number
      t.string :username
      t.string :password
      t.string :gender

      t.timestamps
    end
  end
end
