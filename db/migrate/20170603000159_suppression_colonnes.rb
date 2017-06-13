class SuppressionColonnes < ActiveRecord::Migration[5.1]
  def change
      remove_column :users, :courriel
      remove_column :users, :motdepasse
      remove_column :users, :salt
  end
end
