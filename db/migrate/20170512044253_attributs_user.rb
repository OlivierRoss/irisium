class AttributsUser < ActiveRecord::Migration[5.1]
  def change
	add_column :users, :name, :string
	add_column :users, :identifier, :string
	add_column :users, :password, :string
	add_column :users, :salt, :string
  end
end
