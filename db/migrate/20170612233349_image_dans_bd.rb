class ImageDansBd < ActiveRecord::Migration[5.1]
    def change
        add_column :evenements, :image_id, :integer
        remove_column :evenements, :image
    end
end
