class AddCategorieToEvenements < ActiveRecord::Migration[5.1]
  def change
    add_column :evenements, :categorie, :integer, default: 0
  end
end
