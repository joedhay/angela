class CreateHardwares < ActiveRecord::Migration
  def change
    create_table :hardwares do |t|
      t.integer :id_user
      t.string :name
      t.string :ip_address
      t.boolean :check

      t.timestamps
    end
  end
end
