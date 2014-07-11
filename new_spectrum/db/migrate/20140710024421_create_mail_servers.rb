class CreateMailServers < ActiveRecord::Migration
  def change
    create_table :mail_servers do |t|
      t.integer :id_user
      t.string :name
      t.string :ip_hostname
      t.integer :port
      t.integer :timeout
      t.integer :poll

      t.timestamps
    end
  end
end
