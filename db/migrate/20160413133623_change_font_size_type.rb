class ChangeFontSizeType < ActiveRecord::Migration
  def change
  	change_column :style_pages, :font_size, :string
  end
end
