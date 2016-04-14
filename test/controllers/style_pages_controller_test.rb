require 'test_helper'

class StylePagesControllerTest < ActionController::TestCase
  setup do
    @style_page = style_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:style_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create style_page" do
    assert_difference('StylePage.count') do
      post :create, style_page: { font-color: @style_page.font-color, font-size: @style_page.font-size, font-style: @style_page.font-style, title: @style_page.title, user_id: @style_page.user_id }
    end

    assert_redirected_to style_page_path(assigns(:style_page))
  end

  test "should show style_page" do
    get :show, id: @style_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @style_page
    assert_response :success
  end

  test "should update style_page" do
    patch :update, id: @style_page, style_page: { font-color: @style_page.font-color, font-size: @style_page.font-size, font-style: @style_page.font-style, title: @style_page.title, user_id: @style_page.user_id }
    assert_redirected_to style_page_path(assigns(:style_page))
  end

  test "should destroy style_page" do
    assert_difference('StylePage.count', -1) do
      delete :destroy, id: @style_page
    end

    assert_redirected_to style_pages_path
  end
end
