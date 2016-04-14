class CreateStylePages < ActiveRecord::Migration
  def change
    create_table :style_pages do |t|
      t.string :title
      t.string :font_color
      t.string :font_style
      t.integer :font_size
      t.references :user, index: true

      t.timestamps
    end
  end
end
