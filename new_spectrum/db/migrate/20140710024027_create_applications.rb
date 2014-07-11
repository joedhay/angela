class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.integer :id_user
      t.string :name
      t.string :ip_hostname
      t.string :version
      t.string :port
      t.integer :poll

      t.timestamps
    end
  end
end
