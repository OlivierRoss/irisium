class AdresseUser < ActiveRecord::Migration[5.1]
  def change
	add_column :users, :adresse, :string
	add_column :users, :appartement, :string
	add_column :users, :code_postal, :string
	add_column :users, :ville, :string
	add_column :users, :province, :string
	add_column :users, :pays, :string
	add_column :users, :telephone, :string
  end
end
