class CreateWebServers < ActiveRecord::Migration
  def change
    create_table :web_servers do |t|
      t.integer :id_user
      t.string :name
      t.string :ip_hostname
      t.string :subnet
      t.string :port
      t.integer :poll

      t.timestamps
    end
  end
end
