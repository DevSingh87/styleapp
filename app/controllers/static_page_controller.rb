class StaticPageController < ApplicationController
  def home
  	if current_user.style_page.nil?
  		@style_page = StylePage.new
  	else
  		form_id = current_user.style_page.id
  		@style_page = StylePage.find(form_id)
  	end
  end
end
