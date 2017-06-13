class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.binary :data
      t.string :mime_type
      t.string :name

      t.timestamps
    end
  end
end
