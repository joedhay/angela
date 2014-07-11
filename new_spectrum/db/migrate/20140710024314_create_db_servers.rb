class CreateDbServers < ActiveRecord::Migration
  def change
    create_table :db_servers do |t|
      t.integer :id_user
      t.string :name
      t.string :ip_hostname
      t.string :subnet
      t.integer :poll

      t.timestamps
    end
  end
end
