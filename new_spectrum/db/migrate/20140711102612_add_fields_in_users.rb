class AddFieldsInUsers < ActiveRecord::Migration
  def change
    add_column :users, :parent_id, :int
    add_column :users, :creadit_card_number, :string
  end
end