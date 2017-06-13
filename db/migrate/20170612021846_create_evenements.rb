class CreateEvenements < ActiveRecord::Migration[5.1]
  def change
    create_table :evenements do |t|
      t.string :nom
      t.string :description
      t.string :image
      t.datetime :date
      t.string :lieu

      t.timestamps
    end
  end
end
