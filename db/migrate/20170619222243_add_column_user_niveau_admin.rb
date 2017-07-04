class AddColumnUserNiveauAdmin < ActiveRecord::Migration[5.1]
  def change
      add_column :users, :niveau_admin, :integer, default: 0
  end
end
