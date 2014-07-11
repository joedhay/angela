class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.integer :id_user
      t.string :ip_address
      t.string :os

      t.timestamps
    end
  end
end
