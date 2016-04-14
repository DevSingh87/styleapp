class AddBackgroundColorAndFontFamily < ActiveRecord::Migration
  def change
  	add_column :style_pages, :background_color, :string
  	add_column :style_pages, :font_family, :string
  end
end
