class CreateProtocols < ActiveRecord::Migration
  def change
    create_table :protocols do |t|
      t.integer :id_user
      t.string :name
      t.string :ip_hostname
      t.string :subnet
      t.string :port
      t.integer :timeout
      t.integer :poll

      t.timestamps
    end
  end
end
