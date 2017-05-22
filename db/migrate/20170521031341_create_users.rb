class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :prenom
      t.string :nom
      t.integer :age
      t.string :courriel
      t.string :motdepasse
      t.string :salt

      t.timestamps
    end
  end
end
