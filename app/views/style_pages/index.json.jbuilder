json.array!(@style_pages) do |style_page|
  json.extract! style_page, :id, :title, :font_color, :font_style, :font_size, :user_id
  json.url style_page_url(style_page, format: :json)
end
